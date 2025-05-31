#!/usr/bin/env python3
import subprocess
import time
import sys
import os
import re
import copy

TIMEOUT = 60  # Timeout en segundos para cada ejecución de OPTIC
NUM_CONTENTS = 2  # Número de tipos de contenido (por ejemplo: "comida" y "medicina")

def run_command(cmd, timeout=TIMEOUT):
    try:
        start = time.time()
        result = subprocess.run(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE,
                                timeout=timeout, text=True)
        elapsed = time.time() - start
        return elapsed, result.stdout, result.stderr
    except subprocess.TimeoutExpired:
        return timeout, "", "TimeoutExpired"

def extract_cost(output):
    # Intenta extraer el coste total (buscando "total-cost", "Total cost" o "Plan cost")
    match = re.search(r'(?:total-cost|Total cost|Plan cost)[^0-9]*([0-9]+)', output)
    if match:
        return match.group(1)
    return "N/A"

def generate_problem_custom(d, r, l, p, c, g):
    # Invoca generate-problem.py con los parámetros dados
    cmd = ["python3", "generate-problem.py",
           "-d", str(d),
           "-r", str(r),
           "-l", str(l),
           "-p", str(p),
           "-c", str(c),
           "-g", str(g)]
    elapsed, out, err = run_command(cmd, timeout=30)
    print(f"Generado problema: d={d}, r={r}, l={l}, p={p}, c={c}, g={g} en {elapsed:.2f} s")
    # Usamos la convención de nombres con guiones bajos:
    problem_name = f"drone_problem_d{d}_r{r}_l{l}_p{p}_c{c}_g{g}_ct2.pddl"
    if not os.path.exists(problem_name):
        print(f"Error: No se encontró el problema {problem_name}")
        sys.exit(1)
    return problem_name

def run_optic(problem_file):
    # Se invoca OPTIC con optic-clp usando el dominio "drone-domain.pddl" y el problema generado.
    cmd = ["optic-clp", "-o", "drone-domain.pddl", "-f", problem_file]
    elapsed, stdout, stderr = run_command(cmd, timeout=TIMEOUT)
    return elapsed, stdout, stderr

def find_max_size():
    """Determina el máximo tamaño uniforme (–l, –p, –c, –g iguales) que OPTIC puede resolver en menos de TIMEOUT s.
       Se usan 1 dron y 1 transportador."""
    max_size_found = 0
    for size in range(2, 31):
        print(f"\n=== Probando tamaño uniforme {size} ===")
        problem_file = generate_problem_custom(1, 1, size, size, size, size)
        print(f"Ejecutando OPTIC en {problem_file} ...")
        elapsed, stdout, stderr = run_optic(problem_file)
        print(f"OPTIC terminó en {elapsed:.2f} s")
        if "TimeoutExpired" in stderr or elapsed >= TIMEOUT:
            print(f"OPTIC no resolvió el problema de tamaño {size} en menos de {TIMEOUT} s.")
            break
        else:
            max_size_found = size
    print(f"\nMáximo tamaño resuelto por OPTIC en menos de {TIMEOUT} s: {max_size_found}")
    return max_size_found

def vary_parameter(base_params, param_name, values):
    """
    Varía individualmente el parámetro 'param_name' en base_params y ejecuta OPTIC.
    Para 'p' (personas): ajusta 'g' a min(g, p * NUM_CONTENTS).
    Para 'c' (cajas): ajusta 'g' a min(g, c) (y se exige que c >= NUM_CONTENTS).
    """
    results = []
    for val in values:
        params = copy.deepcopy(base_params)
        params[param_name] = val
        if param_name == "p":
            params["g"] = min(params["g"], val * NUM_CONTENTS)
        elif param_name == "c":
            if val < NUM_CONTENTS:
                print(f"Saltando {param_name}={val} (debe ser al menos {NUM_CONTENTS})")
                continue
            params["g"] = min(params["g"], val)
        print(f"\nProbando con {param_name} = {val} (resto fijo: l={params['l']}, p={params['p']}, c={params['c']}, g={params['g']})")
        problem_file = generate_problem_custom(params["d"], params["r"], params["l"],
                                               params["p"], params["c"], params["g"])
        elapsed, stdout, stderr = run_optic(problem_file)
        cost = extract_cost(stdout + stderr)
        results.append({"value": val, "time": elapsed, "cost": cost})
        print(f"Resultado: {param_name}={val} -> Tiempo: {elapsed:.2f} s, Coste: {cost}")
    return results

def main():
    # Determinar el máximo tamaño uniforme que OPTIC puede resolver en menos de TIMEOUT s.
    max_size = find_max_size()
    if max_size == 0:
        print("OPTIC no resolvió ningún problema en el rango probado.")
        sys.exit(1)
    
    # Parámetros base: 1 dron, 1 transportador, y para -l, -p, -c, -g se usa max_size.
    base_params = {
        "d": 1,
        "r": 1,
        "l": max_size,
        "p": max_size,
        "c": max_size,
        "g": max_size
    }
    print(f"\nUsando parámetros base: {base_params}")
    
    # Variar individualmente: drones (d), personas (p) y cajas (c).
    drones_results = vary_parameter(base_params, "d", list(range(1, max_size + 3)))
    persons_results = vary_parameter(base_params, "p", list(range(1, max_size + 3)))
    crates_results  = vary_parameter(base_params, "c", list(range(NUM_CONTENTS, max_size + 3)))
    
    print("\n=== Resumen Variación Drones ===")
    print(f"{'Drones':<10} {'Tiempo (s)':<15} {'Coste':<10}")
    for res in drones_results:
        print(f"{res['value']:<10} {res['time']:<15.2f} {res['cost']:<10}")
    
    print("\n=== Resumen Variación Personas ===")
    print(f"{'Personas':<10} {'Tiempo (s)':<15} {'Coste':<10}")
    for res in persons_results:
        print(f"{res['value']:<10} {res['time']:<15.2f} {res['cost']:<10}")
    
    print("\n=== Resumen Variación Cajas ===")
    print(f"{'Cajas':<10} {'Tiempo (s)':<15} {'Coste':<10}")
    for res in crates_results:
        print(f"{res['value']:<10} {res['time']:<15.2f} {res['cost']:<10}")

if __name__ == '__main__':
    main()
