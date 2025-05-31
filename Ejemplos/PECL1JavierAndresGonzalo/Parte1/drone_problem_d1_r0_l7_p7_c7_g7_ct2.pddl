(define (problem drone_problem_d1_r0_l7_p7_c7_g7_ct2)
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
	crate1 - crate
	crate2 - crate
	crate3 - crate
	crate4 - crate
	crate5 - crate
	crate6 - crate
	crate7 - crate
	food - contents
	medicine - contents
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
	person6 - person
	person7 - person
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
	(crate-content crate1 food)
	(crate-content crate2 food)
	(crate-content crate3 food)
	(crate-content crate4 food)
	(crate-content crate5 food)
	(crate-content crate6 food)
	(crate-content crate7 medicine)
	(at person1 loc5)
	(at person2 loc5)
	(at person3 loc1)
	(at person4 loc7)
	(at person5 loc7)
	(at person6 loc5)
	(at person7 loc7)
	(person-needs person1 food)
	(person-needs person2 food)
	(person-needs person3 food)
	(person-needs person5 food)
	(person-needs person5 medicine)
	(person-needs person6 food)
	(person-needs person7 food)
)
(:goal (and
	(at drone1 depot)
	(person-has person1 food)
	(person-has person2 food)
	(person-has person3 food)
	(person-has person5 food)
	(person-has person5 medicine)
	(person-has person6 food)
	(person-has person7 food)
	))
)
