#!/usr/bin/env python3
"""
genera_escenarios.py
Lanza generate-problem.py varias veces y deja los ficheros
problem1, problem2, … problem7 en la carpeta actual.
"""

import subprocess
import os

# --------- descripción de las 7 pruebas -------------------------
escenarios = [
    # 1) 50 cajas – carrier 10
    dict(locs=1, caps="10",        needs="50"),
    # 2) 51 cajas – carrier 10
    dict(locs=1, caps="10",        needs="51"),
    # 3) 50 cajas – carrier 40
    dict(locs=1, caps="40",        needs="50"),
    # 4) 50 cajas – carriers 10,20,30
    dict(locs=1, caps="10,20,30",  needs="50"),
    # 5) 50 cajas – carriers 20,50,100
    dict(locs=1, caps="20,50,100", needs="50"),
    # 6) 20-50-100 cajas – carriers 20,50,100
    dict(locs=3, caps="20,50,100", needs="20,50,100"),
    # 7) 50-100 cajas – carrier 150
    dict(locs=2, caps="150",       needs="50,100"),
]

GEN = "generate-problem.py"       # nombre del generador
DRONES = 1                        # siempre usamos 1 dron

for i, e in enumerate(escenarios, start=1):
    cmd = [
        "python3", GEN,
        "--drones", str(DRONES),
        "--locations", str(e["locs"]),
        "--carrier-capacities", e["caps"],
        "--needs", e["needs"],
    ]
    print("→ Generando escenario", i, ":", " ".join(cmd[2:]))
    subprocess.run(cmd, check=True)

    # El generador deja el resultado en un archivo llamado 'problem'
    destino = f"problem{i}"
    if os.path.exists(destino):
        os.remove(destino)
    os.rename("problem", destino)
    print("   Guardado como", destino)

print("\nListo: se han creado problem1 … problem7")
