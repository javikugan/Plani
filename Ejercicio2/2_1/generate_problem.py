#!/usr/bin/env python3

########################################################################################
# Problem instance generator skeleton for emergencies drones domain,
# extended with action costs per Ejercicio 2.2.
#
# Based on the Linköping University TDDD48 2021 course.
# https://www.ida.liu.se/~TDDD48/labs/2021/lab1/index.en.shtml
########################################################################################

from optparse import OptionParser
import random
import math
import sys
import os
folder_path = os.path.dirname(os.path.abspath(__file__))

########################################################################################
# Hard-coded options
########################################################################################

# Crates will have different contents, such as food and medicine.
# You can change this to generate other contents if you want.
content_types = ["comida", "medicina"]

########################################################################################
# Helper functions
########################################################################################

def distance(location_coords, location_num1, location_num2):
    """
    Returns the Euclidean distance between two locations given their indices.
    """
    x1, y1 = location_coords[location_num1]
    x2, y2 = location_coords[location_num2]
    return math.sqrt((x1 - x2) ** 2 + (y1 - y2) ** 2)

def flight_cost(location_coords, location_num1, location_num2):
    """
    Returns the integer action cost of flying between two locations.
    (floor(distance) + 1).
    """
    return int(distance(location_coords, location_num1, location_num2)) + 1

def setup_content_types(options):
    """
    Randomly decides how many crates of each content‐type there are,
    ensuring at least one crate of each type, and that the total goals
    can be satisfied. Returns a list of lists of crate‐names for each type.
    """
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

        # Compute maximum possible goals: sum(min(num_crates_of_type, persons))
        maxgoals = sum(min(num_crates_with_contents[i], options.persons)
                       for i in range(len(content_types)))
        if options.goals <= maxgoals:
            break  # valid distribution

    crates_with_contents = []
    counter = 1
    for qty in num_crates_with_contents:
        crates = []
        for _ in range(qty):
            crates.append("crate" + str(counter))
            counter += 1
        crates_with_contents.append(crates)

    return crates_with_contents

def setup_location_coords(options):
    """
    Assigns each location (including depot at index 0) a random (x,y) in [1..200].
    Returns a list of length (locations+1) where index 0 is depot.
    """
    location_coords = [(0, 0)]  # index 0 = depot
    for _ in range(1, options.locations + 1):
        location_coords.append((random.randint(1, 200), random.randint(1, 200)))
    return location_coords

def setup_person_needs(options, crates_with_contents):
    """
    Randomly assigns 'options.goals' goals: each goal is (person, content_type).
    Returns a boolean matrix need[person_index][content_index].
    """
    need = [[False for _ in range(len(content_types))] for _ in range(options.persons)]
    goals_per_contents = [0 for _ in range(len(content_types))]

    for _ in range(options.goals):
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
    parser.add_option('-d', '--drones', metavar='NUM', dest='drones',
                      type=int,default=1, help='the number of drones')
    parser.add_option('-r', '--carriers', metavar='NUM', dest='carriers',
                      type=int,default=1, help='the number of carriers, for later labs; use 0 for no carriers')
    parser.add_option('-l', '--locations', metavar='NUM', dest='locations',
                      type=int,default=1, help='the number of locations apart from the depot')
    parser.add_option('-p', '--persons', metavar='NUM', dest='persons',
                      type=int,default=1, help='the number of persons')
    parser.add_option('-c', '--crates', metavar='NUM', dest='crates',
                      type=int,default=3, help='the number of crates available')
    parser.add_option('-g', '--goals', metavar='NUM', dest='goals',
                      type=int,default=2, help='the number of crates assigned in the goal')
    parser.add_option('-T', '--carrier-capacity', metavar='NUM', dest='carrier_capacity',
                      type=int, default=4, help='max number of crates a carrier can carry (default=4)')
    parser.add_option('-v', '--verbosity', metavar='LEVEL', dest='verbosity',
                      type=int, default=1, help='verbosity level: 0=silent, 1=normal, 2=debug (default=1)')
    parser.add_option('-o', '--output', metavar='DIR', dest='output',
                      type=str, default=folder_path + '/Problemas',
                      help='directorio de salida para el archivo PDDL generado (default=Ejercicio2/Problemas)')

    options = parser.parse_args()[0]

    def vprint(level, *args, **kwargs):
        if options.verbosity >= level:
            print(*args, **kwargs)

    # Validate required arguments
    for opt_name in ['drones', 'carriers', 'locations', 'persons', 'crates', 'goals']:
        if getattr(options, opt_name) is None:
            print(f"You must specify --{opt_name} (use --help for help)")
            sys.exit(1)

    if options.goals > options.crates:
        print("Cannot have more goals than crates")
        sys.exit(1)
    if len(content_types) > options.crates:
        print("Cannot have more content types than crates:", content_types)
        sys.exit(1)
    if options.goals > len(content_types) * options.persons:
        print(f"For {options.persons} persons, you can have at most "
              f"{len(content_types) * options.persons} goals")
        sys.exit(1)

    vprint(1, "Drones\t\t", options.drones)
    vprint(1, "Carriers\t", options.carriers)
    vprint(1, "Locations\t", options.locations)
    vprint(1, "Persons\t\t", options.persons)
    vprint(1, "Crates\t\t", options.crates)
    vprint(1, "Goals\t\t", options.goals)

    # ----------------------------
    # 1. Define all PDDL object names
    # ----------------------------
    drone = [f"dron{x+1}" for x in range(options.drones)]
    carrier = [f"carrier{x+1}" for x in range(options.carriers)]
    person = [f"person{x+1}" for x in range(options.persons)]
    crate = [f"crate{x+1}" for x in range(options.crates)]
    location = ["deposito"] + [f"loc{x+1}" for x in range(options.locations)]
    max_dron_cap = 1
    max_carrier_cap = options.carrier_capacity if options.carriers > 0 else 0
    max_num = max(max_dron_cap, max_carrier_cap)
    num_objects = [f"n{i}" for i in range(max_num + 1)]

    # Randomly assign each crate and person to some non-depot location
    locs_for_assignment = location[1:]  # all except "deposito"
    person_locations = {p: random.choice(locs_for_assignment) for p in person}

    # ----------------------------
    # 2. Determine crates_with_contents (ensuring at least one of each type)
    # ----------------------------
    crates_with_contents = setup_content_types(options)

    # ----------------------------
    # 3. Generate random coords for each location (index 0 = deposito)
    # ----------------------------
    location_coords = setup_location_coords(options)

    # ----------------------------
    # 4. Determine which (person, content) goals exist
    # ----------------------------
    need = setup_person_needs(options, crates_with_contents)

    # ----------------------------
    # 5. Build a unique problem name
    # ----------------------------
    problem_name = (f"drone_problem_d{options.drones}_r{options.carriers}"
                    f"_l{options.locations}_p{options.persons}"
                    f"_c{options.crates}_g{options.goals}_ct{len(content_types)}")
    vprint(1, "Problem name:", problem_name)

    # ----------------------------
    # 6. Open and write the problem file
    # ----------------------------
    output_dir = options.output
    os.makedirs(output_dir, exist_ok=True)
    problem_path = f"{output_dir}/{problem_name}.pddl"

    with open(problem_path, 'w') as f:
        vprint(1, f"debug: writing to {problem_path}")
        # ---- define problem and domain ----
        f.write(f"(define (problem {problem_name})\n")
        f.write("  (:domain drone-domain)\n")

        # ---- objects ----
        f.write("  (:objects\n")
        for x in drone:
            f.write(f"    {x} - dron\n")
        for x in carrier:
            f.write(f"    {x} - transportador\n")
        for x in location:
            f.write(f"    {x} - location\n")
        for x in crate:
            f.write(f"    {x} - caja\n")
        for x in content_types:
            f.write(f"    {x} - content\n")
        for x in person:
            f.write(f"    {x} - person\n")
        for n in num_objects:
            f.write(f"    {n} - num\n")
        f.write("  )\n\n")

        # ---- init ----
        f.write("  (:init\n")
        # 6.1 All drones start at the depot
        for d in drone:
            f.write(f"    (at {d} deposito)\n")

        # 6.2 All carriers start at the depot (if carriers > 0)
        for c in carrier:
            f.write(f"    (at {c} deposito)\n")

        # 6.3 All crates are at their randomly assigned locations
        for c in crate:
            loc = "deposito"
            f.write(f"    (at {c} {loc})\n")

        # 6.4 Relate each crate to its content
        for idx, crates_of_type in enumerate(crates_with_contents):
            cont = content_types[idx]
            for c in crates_of_type:
                f.write(f"    (contenido-caja {c} {cont})\n")

        # 6.5 All persons are at their randomly assigned locations
        for p in person:
            loc = person_locations[p]
            f.write(f"    (at {p} {loc})\n")

        # 6.6 Each person’s needs
        for pi in range(options.persons):
            for ci in range(len(content_types)):
                if need[pi][ci]:
                    person_name = person[pi]
                    content_name = content_types[ci]
                    f.write(f"    (person-needs {person_name} {content_name})\n")
        vprint(1, f"debug: person needs: {need}")
        # 6.7 Numerical helpers: linking n0→n1, n1→n2, … up to capacity
        for d in drone:
            f.write(f"    (brazo-libre {d})\n")
            
        # 6.8 Numérico para transportadores: n0→n1 … →nK, están vacíos y fijamos capacidad
        for t in carrier:
            for i in range(options.carrier_capacity):
                f.write(f"    (siguiente-t {t} n{i} n{i+1})\n")
            # empieza vacío
            f.write(f"    (cajas-en {t} n0)\n")
            

        f.write("  )\n\n")  # end of :init

        # ---- goals ----
        f.write("  (:goal (and\n")
        # 7.1 All drones must end up at the depot
        for d in drone:
            f.write(f"    (at {d} deposito)\n")

        # 7.2 Each person must have received one crate of each content they need
        for pi in range(options.persons):
            for ci in range(len(content_types)):
                if need[pi][ci]:
                    person_name = person[pi]
                    content_name = content_types[ci]
                    f.write(f"    (person-has {person_name} {content_name})\n")
        f.write("\t(= (total-cost) 0 )\n")

        for i,loc1 in enumerate(location):
            for j,loc2 in enumerate(location):
                if i!=j:
                    coste = flight_cost(location_coords, i, j)
                else:
                    coste = 0
                f.write("\t(= (fly-cost "+ loc1 + " " + loc2 + ") "+ str(coste) + ")\n")
        f.write("  ))\n\n")

        f.write(")\n")  # end of define

    vprint(1, f"Generated problem with action‐costs: {problem_path}")
    # print(f"Archivo PDDL generado en: {problem_path}")

if __name__ == '__main__':
    main()
    
