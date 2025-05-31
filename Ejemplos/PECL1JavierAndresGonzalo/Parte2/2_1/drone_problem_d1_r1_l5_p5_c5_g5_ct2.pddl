(define (problem drone_problem_d1_r1_l5_p5_c5_g5_ct2)
(:domain dron-strips)
(:objects
	dron1 - dron
	deposito - localizacion
	loc1 - localizacion
	loc2 - localizacion
	loc3 - localizacion
	loc4 - localizacion
	loc5 - localizacion
	caja1 - caja
	caja2 - caja
	caja3 - caja
	caja4 - caja
	caja5 - caja
	comida - contenido
	medicina - contenido
	persona1 - persona
	persona2 - persona
	persona3 - persona
	persona4 - persona
	persona5 - persona
	transportador1 - transportador
	n0 - num
	n1 - num
	n2 - num
	n3 - num
	n4 - num
)
(:init
	(dron-en dron1 deposito)
	(caja-en caja1 deposito)
	(caja-en caja2 deposito)
	(caja-en caja3 deposito)
	(caja-en caja4 deposito)
	(caja-en caja5 deposito)
	(caja-disponible caja1 )
	(caja-disponible caja2 )
	(caja-disponible caja3 )
	(caja-disponible caja4 )
	(caja-disponible caja5 )
	(persona-en persona1 loc3)
	(persona-en persona2 loc1)
	(persona-en persona3 loc2)
	(persona-en persona4 loc1)
	(persona-en persona5 loc4)
	(transportador-en transportador1 deposito)

	(caja-contiene caja1 comida)
	(caja-contiene caja2 medicina)
	(caja-contiene caja3 medicina)
	(caja-contiene caja4 medicina)
	(caja-contiene caja5 medicina)

	(persona-necesita persona1 comida)
	(persona-necesita persona1 medicina)
	(persona-necesita persona2 medicina)
	(persona-necesita persona3 medicina)
	(persona-necesita persona5 medicina)

	(siguiente n0 n1)
	(siguiente n1 n2)
	(siguiente n2 n3)
	(siguiente n3 n4)

	(limite-de transportador1 n0)

	(dron-libre dron1)
)
(:goal (and
	(persona-tiene persona1 comida)
	(persona-tiene persona1 medicina)
	(persona-tiene persona2 medicina)
	(persona-tiene persona3 medicina)
	(persona-tiene persona5 medicina)

	(dron-en dron1 deposito)
	))
)
