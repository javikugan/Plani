#!/usr/bin/env python3

########################################################################################
# Problem instance generator for emergencies drones domain.
# Based on the Linköping University TDDD48 2021 course.
# https://www.ida.liu.se/~TDDD48/labs/2021/lab1/index.en.shtml
#
# You mainly have to change the parts marked as TODO.
#
########################################################################################

from optparse import OptionParser
import random
import math
import sys

########################################################################################
# Hard-coded options
########################################################################################

# Crates will have different contents, such as food and medicine.
content_types = ("comida", "medicina")
limit = 4

########################################################################################
# Random seed
########################################################################################

# Set seed to 0 if you want more predictability...
# random.seed(0);

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
        # If we have, for example, 10 medicine and 4 food, with 7 people, 
        # we can support at most 7+4=11 goals.
        maxgoals = sum(min(num_crates, options.persons) for num_crates in num_crates_with_contents)
        if options.goals <= maxgoals:
            break

    print()
    print("Types\tQuantities")
    for x in range(len(num_crates_with_contents)):
        if num_crates_with_contents[x] > 0:
            print(content_types[x] + "\t " + str(num_crates_with_contents[x]))

    crates_with_contents = []
    counter = 1
    for x in range(len(content_types)):
        crates = []
        for y in range(num_crates_with_contents[x]):
            crates.append("caja" + str(counter))
            counter += 1
        crates_with_contents.append(crates)
    return crates_with_contents

def setup_location_coords(options):
    location_coords = [(0, 0)]  # For the depot
    for x in range(1, options.locations + 1):
        location_coords.append((random.randint(1, 200), random.randint(1, 200)))
    print("Location positions", location_coords)
    return location_coords

def setup_person_needs(options, crates_with_contents):
    need = [[False for i in range(len(content_types))] for j in range(options.persons)]
    goals_per_contents = [0 for i in range(len(content_types))]
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
    parser.add_option('-d', '--drones', metavar='NUM', dest='drones', action='store', type=int, help='the number of drones')
    parser.add_option('-r', '--carriers', metavar='NUM', type=int, dest='carriers', help='the number of carriers, for later labs; use 0 for no carriers')
    parser.add_option('-l', '--locations', metavar='NUM', type=int, dest='locations', help='the number of locations apart from the depot')
    parser.add_option('-p', '--persons', metavar='NUM', type=int, dest='persons', help='the number of persons')
    parser.add_option('-c', '--crates', metavar='NUM', type=int, dest='crates', help='the number of crates available')
    parser.add_option('-g', '--goals', metavar='NUM', type=int, dest='goals', help='the number of crates assigned in the goal')

    (options, args) = parser.parse_args()

    if options.drones is None:
        print("You must specify --drones (use --help for help)")
        sys.exit(1)
    if options.carriers is None:
        print("You must specify --carriers (use --help for help)")
        sys.exit(1)
    if options.locations is None:
        print("You must specify --locations (use --help for help)")
        sys.exit(1)
    if options.persons is None:
        print("You must specify --persons (use --help for help)")
        sys.exit(1)
    if options.crates is None:
        print("You must specify --crates (use --help for help)")
        sys.exit(1)
    if options.goals is None:
        print("You must specify --goals (use --help for help)")
        sys.exit(1)
    if options.goals > options.crates:
        print("Cannot have more goals than crates")
        sys.exit(1)
    if len(content_types) > options.crates:
        print("Cannot have more content types than crates:", content_types)
        sys.exit(1)
    if options.goals > len(content_types) * options.persons:
        print("For", options.persons, "persons, you can have at most", len(content_types) * options.persons, "goals")
        sys.exit(1)

    print("Drones\t\t", options.drones)
    print("Carriers\t", options.carriers)
    print("Locations\t", options.locations)
    print("Persons\t\t", options.persons)
    print("Crates\t\t", options.crates)
    print("Goals\t\t", options.goals)

    # Setup lists of objects
    drone = []
    person = []
    crate = []
    carrier = []
    location = []

    for x in range(options.locations):
        location.append("loc" + str(x + 1))
    for x in range(options.drones):
        drone.append("dron" + str(x + 1))
    for x in range(options.carriers):
        carrier.append("transportador" + str(x + 1))
    for x in range(options.persons):
        person.append("persona" + str(x + 1))
    for x in range(options.crates):
        crate.append("caja" + str(x + 1))
    
    crates_with_contents = setup_content_types(options)
    location_coords = setup_location_coords(options)
    need = setup_person_needs(options, crates_with_contents)

    # Definir el nombre del problema usando la convención
    problem_name = "drone_problem_d" + str(options.drones) + "_r" + str(options.carriers) + \
                   "_l" + str(options.locations) + "_p" + str(options.persons) + "_c" + str(options.crates) + \
                   "_g" + str(options.goals) + "_ct" + str(len(content_types))

    # Abrir archivo de salida y escribir el problema PDDL
    with open(problem_name + ".pddl", 'w') as f:
        # Escribimos el encabezado del problema, usando "drone-domain" para el dominio
        f.write("(define (problem " + problem_name + ")\n")
        f.write("(:domain drone-domain)\n")
        f.write("(:objects\n")
        for x in drone:
            f.write("\t" + x + " - dron\n")
        f.write("\tdeposito - localizacion\n")
        for x in location:
            f.write("\t" + x + " - localizacion\n")
        for x in crate:
            f.write("\t" + x + " - caja\n")
        for x in content_types:
            f.write("\t" + x + " - contenido\n")
        for x in person:
            f.write("\t" + x + " - persona\n")
        for x in carrier:
            f.write("\t" + x + " - transportador\n")
        for i in range(limit + 1):
            f.write("\tn" + str(i) + " - num\n")
        f.write(")\n")

        f.write("(:init\n")
        for i in drone:
            f.write("\t(dron-en " + i + " deposito)\n")
        for i in crate:
            f.write("\t(caja-en " + i + " deposito)\n")
        for i in crate:
            f.write("\t(caja-disponible " + i + ")\n")
        for i in person:
            f.write("\t(persona-en " + i + " " + random.choice(location) + ")\n")
        for i in carrier:
            f.write("\t(transportador-en " + i + " deposito)\n")
        f.write("\n")
        for i in range(len(crates_with_contents)):
            for j in crates_with_contents[i]:
                f.write("\t(caja-contiene " + j + " " + content_types[i] + ")\n")
        f.write("\n")
        for i in range(len(person)):
            for j in range(len(content_types)):
                if need[i][j]:
                    f.write("\t(persona-necesita " + person[i] + " " + content_types[j] + ")\n")
        f.write("\n")
        for i in range(limit):
            f.write("\t(siguiente n" + str(i) + " n" + str(i + 1) + ")\n")
        f.write("\n")
        for i in carrier:
            f.write("\t(limite-de " + i + " n0)\n")
        for i in drone:
            f.write("\t(dron-libre " + i + ")\n")
        f.write("\n")
        for i in range(0, len(location) + 1):
            for j in range(0, len(location) + 1):
                if (i == 0 and j != 0):
                    dist = flight_cost(location_coords, i, j)
                    f.write("\t(= (fly-cost deposito loc" + str(j) + ") " + str(dist) + ")\n")
                elif (i != j):
                    dist = flight_cost(location_coords, i, j)
                    if (j == 0):
                        f.write("\t(= (fly-cost loc" + str(i) + " deposito) " + str(dist) + ")\n")
                    else:
                        f.write("\t(= (fly-cost loc" + str(i) + " loc" + str(j) + ") " + str(dist) + ")\n")
                else:
                    if (i == 0):
                        f.write("\t(= (fly-cost deposito deposito) 0)\n")
                    else:
                        f.write("\t(= (fly-cost loc" + str(i) + " loc" + str(j) + ") 0)\n")
        f.write(")\n")

        f.write("(:goal (and\n")
        for i in range(len(person)):
            for j in range(len(content_types)):
                if need[i][j]:
                    f.write("\t(persona-tiene " + person[i] + " " + content_types[j] + ")\n")
        f.write("\n")
        for x in drone:
            f.write("\t(dron-en " + x + " deposito)\n")
        f.write("))\n")
        f.write(")\n")

if __name__ == '__main__':
    main()
