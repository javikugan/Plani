import subprocess
import time
import csv
import os
import re

planners = {
    "FF": ["ff", "-o", "drone-domain.pddl", "-f"],
    "LPG-TD": ["lpg-td", "-n", "1", "-o", "drone-domain.pddl", "-f"],
    "SGPLAN40": ["sgplan40", "-o", "drone-domain.pddl", "-f"]
}
 
def run_command(cmd, timeout=60):
    """
    LIST[STRING], INT --> FLOAT, STRING
    OBJ: ejecuta un comando con timeout y capturar la salida
    PRE: timeout > 0
    """
    try:
        start = time.time()
        result = subprocess.run(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True, timeout=timeout)
        elapsed = time.time() - start
        return elapsed, result.stdout, result.stderr
    except subprocess.TimeoutExpired as e:
        return timeout, "", "Timeout"

def extract_plan_length(output):
    """
    STRING --> INT
    OBJ: extrae el número de acciones del plan
    PRE: Asume que cada línea de acción comienza con un paréntesis
    """
    # Caso SGPLAN40: La salida indica el archivo de solución.
    if "Answer file is" in output:
        match = re.search(r'Answer file is\s+(\S+)', output)
        if match:
            soln_filename = match.group(1)
            if os.path.exists(soln_filename):
                with open(soln_filename, 'r') as f:
                    soln_content = f.read()
                # Suponiendo que en el archivo cada acción se muestra en una línea que empieza con '('
                actions = re.findall(r'^\s*\(.*\)', soln_content, re.MULTILINE)
                if actions:
                    return len(actions)
                else:
                    # Fallback: contar paréntesis de cierre, si cada acción termina con uno
                    return soln_content.count(')')
            else:
                print("SGPLAN40: Archivo de solución no encontrado:", soln_filename)
                return 0
    # Caso LPG-TD: Buscar la línea que indica el número de acciones.
    match = re.search(r'Actions:\s+(\d+)', output)
    if match:
        return int(match.group(1))
    
    # Caso FF: Buscar líneas con el patrón "step <n>:" o que empiecen con un número seguido de dos puntos.
    ff_matches = re.findall(r'^\s*(?:step\s+)?\d+\:', output, re.MULTILINE)
    if ff_matches:
        return len(ff_matches)
    
    # Si no se detecta ninguna acción, retorna 0.
    return 0

# Lista para guardar resultados
results = []

# Comenzamos con un tamaño inicial y vamos incrementando hasta que se alcance o supere el timeout para cada planificador
size = 2
# Indicadores para saber si cada planificador ya falló (o se demoró 60s)
planner_done = {p: False for p in planners}

while not all(planner_done.values()) :
    print(f"Generando problema de tamaño {size}...")
    # Llama al generador de problemas (ajusta la ruta si es necesario)
    gen_cmd = ["python3", "generate-problem.py", "-d", "1", "-r", "0", 
               "-l", str(size), "-p", str(size), "-c", str(size), "-g", str(size)]
    subprocess.run(gen_cmd)

    # Nombre esperado del archivo de problema
    problem_file = f"drone_problem_d1_r0_l{size}_p{size}_c{size}_g{size}_ct2.pddl"
    if not os.path.exists(problem_file):
        print(f"No se generó el archivo {problem_file}.")
        break

    for planner_name, base_cmd in planners.items():
        if planner_done[planner_name]:
            continue  # Si ya se excedió el tiempo para este planificador, no lo volvemos a probar

        cmd = base_cmd + [problem_file]
        print(f"Ejecutando {planner_name} para tamaño {size}...")
        elapsed, stdout, stderr = run_command(cmd, timeout=60)
        steps = extract_plan_length(stdout + stderr)
        
        # Guardamos el resultado
        results.append({
            "Planificador": planner_name,
            "Tamaño": size,
            "Tiempo (s)": round(elapsed, 2),
            "Acciones": steps,
            "Salida": (stdout + "\n" + stderr)[-200:]  # fragmento final de la salida
        })

        # Si el tiempo alcanzó el límite, marcamos que para este planificador ya no incrementamos
        if elapsed >= 60 or "Timeout" in stderr:
            planner_done[planner_name] = True
            print(f"{planner_name} alcanzó el límite de tiempo en tamaño {size}.")

    size += 1

# Guarda los resultados en un CSV para analizarlos
csv_filename = "resultados_planificadores.csv"
with open(csv_filename, "w", newline='') as csvfile:
    fieldnames = ["Planificador", "Tamaño", "Tiempo (s)", "Acciones", "Salida"]
    writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
    writer.writeheader()
    for row in results:
        writer.writerow(row)

print("Resultados guardados en", csv_filename)