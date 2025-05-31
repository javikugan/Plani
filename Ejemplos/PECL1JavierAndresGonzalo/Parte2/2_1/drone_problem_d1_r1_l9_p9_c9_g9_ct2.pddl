(define (problem drone_problem_d1_r1_l9_p9_c9_g9_ct2)
(:domain dron-strips)
(:objects
	dron1 - dron
	deposito - localizacion
	loc1 - localizacion
	loc2 - localizacion
	loc3 - localizacion
	loc4 - localizacion
	loc5 - localizacion
	loc6 - localizacion
	loc7 - localizacion
	loc8 - localizacion
	loc9 - localizacion
	caja1 - caja
	caja2 - caja
	caja3 - caja
	caja4 - caja
	caja5 - caja
	caja6 - caja
	caja7 - caja
	caja8 - caja
	caja9 - caja
	comida - contenido
	medicina - contenido
	persona1 - persona
	persona2 - persona
	persona3 - persona
	persona4 - persona
	persona5 - persona
	persona6 - persona
	persona7 - persona
	persona8 - persona
	persona9 - persona
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
	(caja-en caja6 deposito)
	(caja-en caja7 deposito)
	(caja-en caja8 deposito)
	(caja-en caja9 deposito)
	(caja-disponible caja1 )
	(caja-disponible caja2 )
	(caja-disponible caja3 )
	(caja-disponible caja4 )
	(caja-disponible caja5 )
	(caja-disponible caja6 )
	(caja-disponible caja7 )
	(caja-disponible caja8 )
	(caja-disponible caja9 )
	(persona-en persona1 loc6)
	(persona-en persona2 loc3)
	(persona-en persona3 loc6)
	(persona-en persona4 loc7)
	(persona-en persona5 loc5)
	(persona-en persona6 loc9)
	(persona-en persona7 loc2)
	(persona-en persona8 loc2)
	(persona-en persona9 loc9)
	(transportador-en transportador1 deposito)

	(caja-contiene caja1 comida)
	(caja-contiene caja2 medicina)
	(caja-contiene caja3 medicina)
	(caja-contiene caja4 medicina)
	(caja-contiene caja5 medicina)
	(caja-contiene caja6 medicina)
	(caja-contiene caja7 medicina)
	(caja-contiene caja8 medicina)
	(caja-contiene caja9 medicina)

	(persona-necesita persona1 medicina)
	(persona-necesita persona2 medicina)
	(persona-necesita persona3 medicina)
	(persona-necesita persona4 medicina)
	(persona-necesita persona6 medicina)
	(persona-necesita persona7 comida)
	(persona-necesita persona7 medicina)
	(persona-necesita persona8 medicina)
	(persona-necesita persona9 medicina)

	(siguiente n0 n1)
	(siguiente n1 n2)
	(siguiente n2 n3)
	(siguiente n3 n4)

	(limite-de transportador1 n0)

	(dron-libre dron1)
)
(:goal (and
	(persona-tiene persona1 medicina)
	(persona-tiene persona2 medicina)
	(persona-tiene persona3 medicina)
	(persona-tiene persona4 medicina)
	(persona-tiene persona6 medicina)
	(persona-tiene persona7 comida)
	(persona-tiene persona7 medicina)
	(persona-tiene persona8 medicina)
	(persona-tiene persona9 medicina)

	(dron-en dron1 deposito)
	))
)
