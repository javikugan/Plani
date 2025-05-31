(define (problem drone_problem_d1_r0_l2_p2_c2_g2_ct2)
(:domain drone-domain)
(:objects
	drone1 - drone
	depot - location
	loc1 - location
	loc2 - location
	crate1 - crate
	crate2 - crate
	food - contents
	medicine - contents
	person1 - person
	person2 - person
)
(:init
	(at drone1 depot)
	(arm1-free drone1)
	(arm2-free drone1)
	(at crate1 depot)
	(at crate2 depot)
	(crate-content crate1 food)
	(crate-content crate2 medicine)
	(at person1 loc1)
	(at person2 loc1)
	(person-needs person1 medicine)
	(person-needs person2 food)
)
(:goal (and
	(at drone1 depot)
	(person-has person1 medicine)
	(person-has person2 food)
	))
)
