(define (problem drone_problem_d1_r1_l2_p2_c2_g2_ct2)
  (:domain drone-domain)
  (:objects
    dron1 - dron
    carrier1 - transportador
    deposito - location
    loc1 - location
    loc2 - location
    crate1 - caja
    crate2 - caja
    comida - content
    medicina - content
    person1 - person
    person2 - person
    n0 - num
    n1 - num
    n2 - num
    n3 - num
    n4 - num
  )

  (:init
    (at dron1 deposito)
    (at carrier1 deposito)
    (at crate1 deposito)
    (at crate2 deposito)
    (contenido-caja crate1 comida)
    (contenido-caja crate2 medicina)
    (at person1 loc2)
    (at person2 loc2)
    (person-needs person1 comida)
    (person-needs person1 medicina)
    (brazo-libre dron1)
    (siguiente-t carrier1 n0 n1)
    (siguiente-t carrier1 n1 n2)
    (siguiente-t carrier1 n2 n3)
    (siguiente-t carrier1 n3 n4)
    (cajas-en carrier1 n0)
	(= (total-cost) 0 )
	(= (fly-cost deposito deposito) 0)
	(= (fly-cost deposito loc1) 236)
	(= (fly-cost deposito loc2) 112)
	(= (fly-cost loc1 deposito) 236)
	(= (fly-cost loc1 loc1) 0)
	(= (fly-cost loc1 loc2) 185)
	(= (fly-cost loc2 deposito) 112)
	(= (fly-cost loc2 loc1) 185)
	(= (fly-cost loc2 loc2) 0)
  )

  (:goal (and
    (at dron1 deposito)
    (person-has person1 comida)
    (person-has person1 medicina)
    (at carrier1 deposito)
  ))

   (:metric minimize (total-cost))

)
