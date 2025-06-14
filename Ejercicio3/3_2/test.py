import subprocess
import os
import time
import re
import pathlib

path_generador = pathlib.Path(__file__).parent.parent / "generate_problem.py"
path_dominio = pathlib.Path(__file__).parent / "dron-domain.pddl"
path_problema = pathlib.Path(__file__).parent / "Problemas"
print(path_problema)
GENERADOR = str(path_generador)
DOMINIO = str(path_dominio)
path_optic = pathlib.Path(__file__).parent.parent.parent / "planificadores/optic-clp"
OPTIC = str(path_optic)  # Corrección: Definir OPTIC correctamente
TIMEOUT = 60  # segundos
print(path_generador)

def generar_problema(d, r, l, p, c, g, output_dir):
    nombre = f"drone_problem_d{d}_r{r}_l{l}_p{p}_c{c}_g{g}_ct2"
    ruta = f"{output_dir}/{nombre}.pddl"
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
    cmd = [
        "python3", GENERADOR,
        "-d", str(d), "-r", str(r), "-l", str(l),
        "-p", str(p), "-c", str(c), "-g", str(g),
        "-o", str(output_dir)
        ]
    try:
        subprocess.run(cmd, check=True, capture_output=True, text=True)
    except subprocess.CalledProcessError as e:
        print(f"Error al generar el problema:\nSTDOUT:\n{e.stdout}\nSTDERR:\n{e.stderr}")
        raise
    print(f"Problema generado: {ruta}")
    print(f"Comando: {' '.join(cmd)}")
    return ruta

def ejecutar_optic(problema):
    cmd = [OPTIC, DOMINIO, problema]
    inicio = time.time()
    try:
        resultado = subprocess.run(cmd, capture_output=True, text=True, timeout=TIMEOUT)
        duracion = time.time() - inicio
        return resultado.stdout, resultado.stderr, duracion
    except subprocess.TimeoutExpired:
        return "", "Timeout", TIMEOUT

def hay_concurrencia(plan):
    # Busca líneas con acciones concurrentes (varias acciones entre paréntesis en la misma línea)
    return any(re.match(r"^\s*\(\s*\([^)]+\)\s+\([^)]+\)", linea) for linea in plan.splitlines())

def buscar_tamano_maximo():
    size = 2
    while True:
        problema = generar_problema(d=2, r=2, l=size, p=size, c=size, g=size, output_dir=path_problema)
        result = ejecutar_optic(problema)
        if result is None or len(result) != 3:
            print("Error: ejecutar_optic did not return expected values.")
            break
        out, err, dur = result
        print(f"Planner output for size {size}:\n{out}\nError output:\n{err}\nDuration: {dur:.2f}s")
        if "Timeout" in str(err) or dur >= TIMEOUT:
            break
        size += 1
    return size - 1

def analizar_parametros(size_max):
    base = {"d": 2, "r": 2, "l": size_max, "p": size_max, "c": size_max, "g": size_max}
    resultados = {}
    for param in ["d", "r", "l", "p", "c"]:
        resultados[param] = []
        for val in range(1, size_max + 2):
            args = base.copy()
            args[param] = val
            problema = generar_problema(**args)
            out, _, dur = ejecutar_optic(problema)
            resultados[param].append({"valor": val, "tiempo": dur, "concurrencia": hay_concurrencia(out)})
    return resultados

if __name__ == "__main__":
    print("Buscando tamaño máximo resoluble en menos de 1 minuto...")
    max_size = buscar_tamano_maximo()
    print(f"Tamaño máximo: {max_size}")

    print("Analizando variación de parámetros...")
    resultados = analizar_parametros(max_size)
    for param, datos in resultados.items():
        print(f"\nParámetro: {param}")
        for res in datos:
            print(f"Valor: {res['valor']}, Tiempo: {res['tiempo']:.2f}s, Concurrencia: {res['concurrencia']}")