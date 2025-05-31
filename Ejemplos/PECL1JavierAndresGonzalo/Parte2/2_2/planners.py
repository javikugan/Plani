#!/usr/bin/env python3
import subprocess
import time
import sys
import os
import re

# Obtiene la ruta a downward.sif desde la variable de entorno, con valor por defecto "./downward.sif"
downward_sif = os.environ.get("DOWNWARD_SIF", "./downward.sif")
print("Ruta a downward.sif:", downward_sif)

# Configuración de los planificadores:
# - Metric-FF se invoca directamente.
# - Los demás se invocan mediante downward.sif usando downward.py con el alias correspondiente.
planners = {
    "Metric-FF": {
        "cmd": ["metricff", "-o", "drone_domain.pddl", "-f"],
        "type": "Optimal"
    },
    "LAMA": {
        "cmd": [downward_sif, "--alias", "lama-first", "drone_domain.pddl"],
        "type": "Anytime"
    },
    "FastDownwardAutotune2": {
        "cmd": [downward_sif, "--alias", "seq-sat-fd-autotune-2", "drone_domain.pddl"],
        "type": "Anytime"
    },
    "FDStoneSoupSatisficing": {
        "cmd": [downward_sif, "--alias", "seq-sat-fdss-2", "drone_domain.pddl"],
        "type": "Anytime"
    },
    "LM-CUT": {
        "cmd": [downward_sif, "--alias", "seq-opt-lmcut", "drone_domain.pddl"],
        "type": "Optimal"
    },
    "BJOLP": {
        "cmd": [downward_sif, "--alias", "seq-opt-bjolp", "drone_domain.pddl"],
        "type": "Portfolio"
    },
    "FDStoneSoupOptimizing": {
        "cmd": [downward_sif, "--alias", "seq-opt-fdss-2", "drone_domain.pddl"],
        "type": "Optimal"
    }
}

# Parámetros fijos para el experimento: 1 dron, 1 transportador.
NUM_DRONES = 1
NUM_CARRIERS = 1  # Transportadores
# Los parámetros de problema (-l, -p, -c, -g) se igualarán al "size" en cada iteración.

TIMEOUT = 60  # Timeout en segundos para cada ejecución.

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
    match = re.search(r'(?:total-cost|Total cost)[^0-9]*([0-9]+)', output)
    if match:
        return match.group(1)
    return "N/A"

def generate_problem(size):
    # Invoca al generador de problemas con parámetros: -d, -r, -l, -p, -c, -g
    cmd = ["python3", "generate_problem.py",
           "-d", str(NUM_DRONES),
           "-r", str(NUM_CARRIERS),
           "-l", str(size),
           "-p", str(size),
           "-c", str(size),
           "-g", str(size)]
    elapsed, out, err = run_command(cmd, timeout=30)
    print(f"Generado problema de tamaño {size} en {elapsed:.2f} s")
    # Se asume que el nombre del archivo se genera según la convención:
    problem_name = f"drone_problem_d{NUM_DRONES}_r{NUM_CARRIERS}_l{size}_p{size}_c{size}_g{size}_ct2.pddl"
    if not os.path.exists(problem_name):
        print(f"Error: No se encontró el problema {problem_name}")
        sys.exit(1)
    return problem_name

def main():
    max_size = 30  # Criterio de parada: tamaño máximo 30.
    start_size = 2

    results = {planner: {"max_size": 0, "cost": "N/A", "time": 0} for planner in planners}
    
    for size in range(start_size, max_size + 1):
        print(f"\n=== Probando tamaño {size} ===")
        problem_file = generate_problem(size)
        
        for planner_name, info in planners.items():
            # Si ya se alcanzó el timeout para este planificador, saltamos.
            if results[planner_name]["max_size"] and results[planner_name]["time"] >= TIMEOUT:
                continue
            # Para todos los planificadores, el comando se forma añadiendo el problema como último argumento.
            cmd = info["cmd"] + [problem_file]
            print(f"\nEjecutando {planner_name} en problema de tamaño {size} ...")
            elapsed, stdout, stderr = run_command(cmd, timeout=TIMEOUT)
            print(f"{planner_name} terminó en {elapsed:.2f} s")
            print("Fragmento de salida:")
            print(stdout[-400:])
            if "TimeoutExpired" in stderr or elapsed >= TIMEOUT:
                print(f"{planner_name} no resolvió el problema de tamaño {size} en menos de {TIMEOUT} segundos.")
            else:
                results[planner_name]["max_size"] = size
                results[planner_name]["time"] = elapsed
                results[planner_name]["cost"] = extract_cost(stdout + stderr)
    
    print("\n=== Resumen de Resultados ===")
    header = f"{'Planificador':<30} {'Tamaño Resuelto':<20} {'Tiempo (s)':<15} {'Coste':<10} {'Tipo':<15}"
    print(header)
    print("-" * len(header))
    for planner_name, info in results.items():
        planner_type = planners[planner_name]["type"]
        print(f"{planner_name:<30} {str(info['max_size']):<20} {info['time']:<15.2f} {info['cost']:<10} {planner_type:<15}")

if __name__ == '__main__':
    main()
