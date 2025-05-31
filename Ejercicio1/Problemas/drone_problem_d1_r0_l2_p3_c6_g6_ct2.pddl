(define (problem drone_problem_d1_r0_l2_p3_c6_g6_ct2)
(:domain drone-domain)
(:objects
	dron1 - dron
	deposito - location
	loc1 - location
	loc2 - location
	crate1 - caja
	crate2 - caja
	crate3 - caja
	crate4 - caja
	crate5 - caja
	crate6 - caja
	comida - content
	medicina - content
	person1 - person
	person2 - person
	person3 - person
	n0 - num
	n1 - num
	n2 - num
)
(:init
	(at dron1 deposito)
	(at crate1 loc2)
	(at crate2 loc1)
	(at crate3 loc2)
	(at crate4 loc2)
	(at crate5 loc2)
	(at crate6 loc2)
	(contenido-caja crate1 comida)
	(contenido-caja crate2 comida)
	(contenido-caja crate3 comida)
	(contenido-caja crate4 medicina)
	(contenido-caja crate5 medicina)
	(contenido-caja crate6 medicina)
	(at person1 loc1)
	(at person2 loc1)
	(at person3 loc2)
	(person-needs person1 comida)
	(person-needs person1 medicina)
	(person-needs person2 comida)
	(person-needs person2 medicina)
	(person-needs person3 comida)
	(person-needs person3 medicina)
	(siguiente dron1 n0 n1)
	(siguiente dron1 n1 n2)
	(cantidad-cajas-cargadas dron1 n0)
)
(:goal (and
	(at dron1 deposito)
	(person-has person1 comida)
	(person-has person1 medicina)
	(person-has person2 comida)
	(person-has person2 medicina)
	(person-has person3 comida)
	(person-has person3 medicina)
))
)
