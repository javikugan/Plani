(define (problem drone_problem_d1_r0_l10_p10_c10_g10_ct2)
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
	loc9 - location
	loc10 - location
	crate1 - crate
	crate2 - crate
	crate3 - crate
	crate4 - crate
	crate5 - crate
	crate6 - crate
	crate7 - crate
	crate8 - crate
	crate9 - crate
	crate10 - crate
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
	person9 - person
	person10 - person
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
	(at crate9 depot)
	(at crate10 depot)
	(crate-content crate1 food)
	(crate-content crate2 food)
	(crate-content crate3 food)
	(crate-content crate4 food)
	(crate-content crate5 medicine)
	(crate-content crate6 medicine)
	(crate-content crate7 medicine)
	(crate-content crate8 medicine)
	(crate-content crate9 medicine)
	(crate-content crate10 medicine)
	(at person1 loc2)
	(at person2 loc10)
	(at person3 loc3)
	(at person4 loc8)
	(at person5 loc2)
	(at person6 loc1)
	(at person7 loc5)
	(at person8 loc4)
	(at person9 loc6)
	(at person10 loc10)
	(person-needs person2 medicine)
	(person-needs person3 medicine)
	(person-needs person4 food)
	(person-needs person4 medicine)
	(person-needs person5 medicine)
	(person-needs person7 medicine)
	(person-needs person8 food)
	(person-needs person8 medicine)
	(person-needs person9 food)
	(person-needs person10 food)
)
(:goal (and
	(at drone1 depot)
	(person-has person2 medicine)
	(person-has person3 medicine)
	(person-has person4 food)
	(person-has person4 medicine)
	(person-has person5 medicine)
	(person-has person7 medicine)
	(person-has person8 food)
	(person-has person8 medicine)
	(person-has person9 food)
	(person-has person10 food)
	))
)
