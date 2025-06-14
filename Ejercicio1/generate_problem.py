#!/usr/bin/env python3

########################################################################################
# Problem instance generator skeleton for emergencies drones domain.
# Adaptado para el dominio con pinzas izquierda y derecha.
#
########################################################################################

from optparse import OptionParser
import random
import math
import sys
import os

########################################################################################
# Tipos de contenido de las cajas
########################################################################################

# Las cajas tendrán distintos contenidos, como comida y medicina.
content_types = ["comida", "medicina"]

########################################################################################
# Helper functions
########################################################################################

def distance(location_coords, location_num1, location_num2):
    x1 = location_coords[location_num1][0]
    y1 = location_coords[location_num1][1]
    x2 = location_coords[location_num2][0]
    y2 = location_coords[location_num2][1]
    return math.sqrt((x1 - x2) ** 2 + (y1 - y2) ** 2)

def flight_cost(location_coords, location_num1, location_num2):
    return int(distance(location_coords, location_num1, location_num2)) + 1

def setup_content_types(options):
    while True:
        num_crates_with_contents = []
        crates_left = options.crates
        for x in range(len(content_types) - 1):
            types_after_this = len(content_types) - x - 1
            max_now = crates_left - types_after_this
            num = random.randint(1, max_now)
            num_crates_with_contents.append(num)
            crates_left -= num
        num_crates_with_contents.append(crates_left)

        maxgoals = sum(min(num_crates, options.persons) for num_crates in num_crates_with_contents)
        if options.goals <= maxgoals:
            break

    crates_with_contents = []
    counter = 1
    for x in range(len(content_types)):
        crates = []
        for y in range(num_crates_with_contents[x]):
            crates.append("crate" + str(counter))
            counter += 1
        crates_with_contents.append(crates)

    return crates_with_contents

def setup_location_coords(options):
    location_coords = [(0, 0)]  # Para el depósito
    for x in range(1, options.locations + 1):
        location_coords.append((random.randint(1, 200), random.randint(1, 200)))
    return location_coords

def setup_person_needs(options, crates_with_contents):
    need = [[False for _ in range(len(content_types))] for _ in range(options.persons)]
    goals_per_contents = [0 for _ in range(len(content_types))]

    for goalnum in range(options.goals):
        generated = False
        while not generated:
            rand_person = random.randint(0, options.persons - 1)
            rand_content = random.randint(0, len(content_types) - 1)
            if (goals_per_contents[rand_content] < len(crates_with_contents[rand_content])
                    and not need[rand_person][rand_content]):
                need[rand_person][rand_content] = True
                goals_per_contents[rand_content] += 1
                generated = True
    return need

########################################################################################
# Main program
########################################################################################

def main():
    parser = OptionParser(usage='python generator.py [-help] options...')
    parser.add_option('-d', '--drones', metavar='NUM', dest='drones', action='store', type=int,
                      help='el número de drones')
    parser.add_option('-l', '--locations', metavar='NUM', type=int, dest='locations',
                      help='el número de ubicaciones aparte del depósito')
    parser.add_option('-p', '--persons', metavar='NUM', type=int, dest='persons',
                      help='el número de personas')
    parser.add_option('-c', '--crates', metavar='NUM', type=int, dest='crates',
                      help='el número de cajas disponibles')
    parser.add_option('-g', '--goals', metavar='NUM', type=int, dest='goals',
                      help='el número de metas (asignaciones) a generar')
    parser.add_option('-v', '--verbosity', metavar='LEVEL', type=int, dest='verbosity',
                      default=1, help='nivel de verbosidad: 0=silencioso, 1=normal, 2=debug')

    (options, args) = parser.parse_args()

    def vprint(level, *args, **kwargs):
        if options.verbosity >= level:
            print(*args, **kwargs)

    # Verificación de argumentos
    if options.drones is None:
        print("Debe especificar --drones (use --help para ayuda)")
        sys.exit(1)
    if options.locations is None:
        print("Debe especificar --locations (use --help para ayuda)")
        sys.exit(1)
    if options.persons is None:
        print("Debe especificar --persons (use --help para ayuda)")
        sys.exit(1)
    if options.crates is None:
        print("Debe especificar --crates (use --help para ayuda)")
        sys.exit(1)
    if options.goals is None:
        print("Debe especificar --goals (use --help para ayuda)")
        sys.exit(1)
    if options.goals > options.crates:
        print("No se pueden tener más metas que cajas")
        sys.exit(1)
    if len(content_types) > options.crates:
        print("No puede haber más tipos de contenido que cajas:", content_types)
        sys.exit(1)
    if options.goals > len(content_types) * options.persons:
        print(f"Para {options.persons} personas, como máximo {len(content_types) * options.persons} metas")
        sys.exit(1)

    vprint(1, "Drones\t", options.drones)
    vprint(1, "Locations\t", options.locations)
    vprint(1, "Persons\t", options.persons)
    vprint(1, "Crates\t", options.crates)
    vprint(1, "Goals\t", options.goals)

    # Nombres de los objetos
    drone = [f"dron{x+1}" for x in range(options.drones)]
    location = ["deposito"] + [f"loc{x+1}" for x in range(options.locations)]
    person = [f"person{x+1}" for x in range(options.persons)]
    crate = [f"crate{x+1}" for x in range(options.crates)]

    # Asignación aleatoria de ubicaciones iniciales
    locs_for_assignment = location[1:]  # Todas menos 'deposito'
    crate_locations = {c: random.choice(locs_for_assignment) for c in crate}
    person_locations = {p: random.choice(locs_for_assignment) for p in person}

    # Determinar qué cajas tienen cada contenido
    crates_with_contents = setup_content_types(options)

    # Coordenadas para calcular costos de vuelo (no se usan directamente en este dominio)
    location_coords = setup_location_coords(options)

    # Determinar qué contenido necesita cada persona
    need = setup_person_needs(options, crates_with_contents)

    # Nombre del problema
    problem_name = (
        f"drone_problem_d{options.drones}_l{options.locations}"
        f"_p{options.persons}_c{options.crates}_g{options.goals}"
        f"_ct{len(content_types)}"
    )
    vprint(1, "Problem name:", problem_name)

    # Crear carpeta de salida si no existe
    output_dir = "Problemas"
    os.makedirs(output_dir, exist_ok=True)

    with open(f"{output_dir}/{problem_name}.pddl", "w") as f:
        # Definición del problema
        f.write(f"(define (problem {problem_name})\n")
        f.write("  (:domain drone-domain)\n")

        # Objetos
        f.write("  (:objects\n")
        for x in drone:
            f.write(f"    {x} - dron\n")
        for x in location:
            f.write(f"    {x} - location\n")
        for x in crate:
            f.write(f"    {x} - caja\n")
        for x in content_types:
            f.write(f"    {x} - content\n")
        for x in person:
            f.write(f"    {x} - person\n")
        f.write("  )\n")

        # Estado inicial
        f.write("  (:init\n")
        # Todos los drones en el depósito
        for x in drone:
            f.write(f"    (at {x} deposito)\n")
            f.write(f"    (left-free {x})\n")
            f.write(f"    (right-free {x})\n")

        # Todas las cajas en deposito
        for c in crate:
            loc = crate_locations[c]
            f.write(f"    (at {c} deposito)\n")

        # Asociar cada caja con su contenido
        for idx, crates in enumerate(crates_with_contents):
            for c in crates:
                f.write(f"    (contenido-caja {c} {content_types[idx]})\n")

        # Todas las personas en ubicaciones aleatorias
        for p in person:
            loc = person_locations[p]
            f.write(f"    (at {p} {loc})\n")

        # Necesidades de cada persona
        for i in range(options.persons):
            for j in range(len(content_types)):
                if need[i][j]:
                    p_name = person[i]
                    c_type = content_types[j]
                    f.write(f"    (person-needs {p_name} {c_type})\n")
        f.write("  )\n")

        # Metas
        f.write("  (:goal (and\n")
        # Todos los drones deben terminar en el depósito
        for x in drone:
            f.write(f"    (at {x} deposito)\n")
        # Cada persona debe tener el contenido que necesita
        for i in range(options.persons):
            for j in range(len(content_types)):
                if need[i][j]:
                    p_name = person[i]
                    c_type = content_types[j]
                    f.write(f"    (person-has {p_name} {c_type})\n")
        
        f.write("  ))\n")

        f.write(")\n")


if __name__ == "__main__":
    main()
