(define (problem drone_problem_d1_r0_l8_p8_c8_g8_ct2)
(:domain drone-domain)
(:objects
	drone1 - drone
	depot - location
	loc1 - location
	loc2 - location
	loc3 - location
	loc4 - location
	loc5 - location
	loc6 - location
	loc7 - location
	loc8 - location
	crate1 - crate
	crate2 - crate
	crate3 - crate
	crate4 - crate
	crate5 - crate
	crate6 - crate
	crate7 - crate
	crate8 - crate
	food - contents
	medicine - contents
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
	person6 - person
	person7 - person
	person8 - person
)
(:init
	(at drone1 depot)
	(arm1-free drone1)
	(arm2-free drone1)
	(at crate1 depot)
	(at crate2 depot)
	(at crate3 depot)
	(at crate4 depot)
	(at crate5 depot)
	(at crate6 depot)
	(at crate7 depot)
	(at crate8 depot)
	(crate-content crate1 food)
	(crate-content crate2 medicine)
	(crate-content crate3 medicine)
	(crate-content crate4 medicine)
	(crate-content crate5 medicine)
	(crate-content crate6 medicine)
	(crate-content crate7 medicine)
	(crate-content crate8 medicine)
	(at person1 loc1)
	(at person2 loc3)
	(at person3 loc7)
	(at person4 loc2)
	(at person5 loc1)
	(at person6 loc3)
	(at person7 loc6)
	(at person8 loc2)
	(person-needs person2 medicine)
	(person-needs person3 medicine)
	(person-needs person4 medicine)
	(person-needs person5 medicine)
	(person-needs person6 food)
	(person-needs person6 medicine)
	(person-needs person7 medicine)
	(person-needs person8 medicine)
)
(:goal (and
	(at drone1 depot)
	(person-has person2 medicine)
	(person-has person3 medicine)
	(person-has person4 medicine)
	(person-has person5 medicine)
	(person-has person6 food)
	(person-has person6 medicine)
	(person-has person7 medicine)
	(person-has person8 medicine)
	))
)
