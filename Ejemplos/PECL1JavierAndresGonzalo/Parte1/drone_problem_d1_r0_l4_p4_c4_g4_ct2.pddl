(define (problem drone_problem_d1_r0_l4_p4_c4_g4_ct2)
(:domain drone-domain)
(:objects
	drone1 - drone
	depot - location
	loc1 - location
	loc2 - location
	loc3 - location
	loc4 - location
	crate1 - crate
	crate2 - crate
	crate3 - crate
	crate4 - crate
	food - contents
	medicine - contents
	person1 - person
	person2 - person
	person3 - person
	person4 - person
)
(:init
	(at drone1 depot)
	(arm1-free drone1)
	(arm2-free drone1)
	(at crate1 depot)
	(at crate2 depot)
	(at crate3 depot)
	(at crate4 depot)
	(crate-content crate1 food)
	(crate-content crate2 medicine)
	(crate-content crate3 medicine)
	(crate-content crate4 medicine)
	(at person1 loc2)
	(at person2 loc4)
	(at person3 loc4)
	(at person4 loc1)
	(person-needs person1 medicine)
	(person-needs person2 medicine)
	(person-needs person3 medicine)
	(person-needs person4 food)
)
(:goal (and
	(at drone1 depot)
	(person-has person1 medicine)
	(person-has person2 medicine)
	(person-has person3 medicine)
	(person-has person4 food)
	))
)
