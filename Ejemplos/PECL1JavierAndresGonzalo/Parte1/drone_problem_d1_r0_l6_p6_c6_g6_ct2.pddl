(define (problem drone_problem_d1_r0_l6_p6_c6_g6_ct2)
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
	crate1 - crate
	crate2 - crate
	crate3 - crate
	crate4 - crate
	crate5 - crate
	crate6 - crate
	food - contents
	medicine - contents
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
	person6 - person
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
	(crate-content crate1 food)
	(crate-content crate2 medicine)
	(crate-content crate3 medicine)
	(crate-content crate4 medicine)
	(crate-content crate5 medicine)
	(crate-content crate6 medicine)
	(at person1 loc3)
	(at person2 loc5)
	(at person3 loc6)
	(at person4 loc5)
	(at person5 loc2)
	(at person6 loc1)
	(person-needs person1 medicine)
	(person-needs person2 food)
	(person-needs person2 medicine)
	(person-needs person3 medicine)
	(person-needs person4 medicine)
	(person-needs person6 medicine)
)
(:goal (and
	(at drone1 depot)
	(person-has person1 medicine)
	(person-has person2 food)
	(person-has person2 medicine)
	(person-has person3 medicine)
	(person-has person4 medicine)
	(person-has person6 medicine)
	))
)
