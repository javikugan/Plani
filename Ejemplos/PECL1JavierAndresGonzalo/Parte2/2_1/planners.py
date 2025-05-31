#!/usr/bin/env python3
import subprocess
import time
import sys
import os

def run_command(cmd, timeout=60):
    try:
        start = time.time()
        result = subprocess.run(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, timeout=timeout, text=True)
        elapsed = time.time() - start
        return elapsed, result.stdout, result.stderr
    except subprocess.TimeoutExpired:
        return timeout, "", "Timeout expired"

def main():
    # Parámetros para la generación de problemas (ajusta según necesites)
    drones = 1
    carriers = 1         # Número de transportadores
    locations = 10       # Número de localizaciones (sin contar el depósito)
    persons = 10
    crates = 10
    goals = 10
    content_types = 2    # En este caso, "comida" y "medicina"
    
    # Nombre del problema según la convención del generador
    problem_name = f"drone_problem_d{drones}_r{carriers}_l{locations}_p{persons}_c{crates}_g{goals}_ct{content_types}"
    problem_file = problem_name + ".pddl"
    
    # Generar el problema usando generate_problem.py
    gen_cmd = [
        "python3", "generate_problem.py",
        "-d", str(drones),
        "-r", str(carriers),
        "-l", str(locations),
        "-p", str(persons),
        "-c", str(crates),
        "-g", str(goals)
    ]
    print("Generando problema con el comando:")
    print(" ".join(gen_cmd))
    gen_time, gen_stdout, gen_stderr = run_command(gen_cmd, timeout=30)
    print("Salida de generación:")
    print(gen_stdout)
    if gen_stderr:
        print("Errores de generación:")
        print(gen_stderr)
    
    if not os.path.exists(problem_file):
        print("Error: No se generó el archivo de problema:", problem_file)
        sys.exit(1)
    
    # Definir los comandos para cada planificador.
    # Se asume que "drone_domain.pddl" es el dominio (debe estar en la misma carpeta).
    planners = {
        "FF": ["ff", "-o", "drone_domain.pddl", "-f", problem_file],
        "LPG-TD": ["lpg-td", "-n", "1", "-o", "drone_domain.pddl", "-f", problem_file],
        "SGPLAN40": ["sgplan40", "-o", "drone_domain.pddl", "-f", problem_file]
    }
    
    results = {}
    
    # Ejecutar cada planificador y capturar resultados
    for planner, cmd in planners.items():
        print(f"\nEjecutando planificador {planner} con el comando:")
        print(" ".join(cmd))
        elapsed, out, err = run_command(cmd, timeout=60)
        results[planner] = {"time": elapsed, "stdout": out, "stderr": err}
        print(f"\nPlanificador {planner} terminó en {elapsed:.2f} segundos.")
        print("Salida:")
        print(out)
        if err.strip():
            print("Errores:")
            print(err)
    
    # Resumen de resultados
    print("\nResumen de resultados:")
    print(f"{'Planificador':<12} {'Tiempo (s)':<12}")
    for planner, res in results.items():
        print(f"{planner:<12} {res['time']:<12.2f}")

if __name__ == '__main__':
    main()
