(define (problem drone_problem_d1_r0_l3_p3_c3_g3_ct2)
(:domain drone-domain)
(:objects
	drone1 - drone
	depot - location
	loc1 - location
	loc2 - location
	loc3 - location
	crate1 - crate
	crate2 - crate
	crate3 - crate
	food - contents
	medicine - contents
	person1 - person
	person2 - person
	person3 - person
)
(:init
	(at drone1 depot)
	(arm1-free drone1)
	(arm2-free drone1)
	(at crate1 depot)
	(at crate2 depot)
	(at crate3 depot)
	(crate-content crate1 food)
	(crate-content crate2 medicine)
	(crate-content crate3 medicine)
	(at person1 loc2)
	(at person2 loc3)
	(at person3 loc3)
	(person-needs person1 food)
	(person-needs person1 medicine)
	(person-needs person3 medicine)
)
(:goal (and
	(at drone1 depot)
	(person-has person1 food)
	(person-has person1 medicine)
	(person-has person3 medicine)
	))
)
