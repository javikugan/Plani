(define (problem drone_problem_d2_r2_l2_p2_c2_g2_ct2)
  (:domain drone-domain)
  (:objects
    dron1 - dron
    dron2 - dron
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
    (at dron2 deposito)
    (at carrier1 deposito)
    (at crate1 deposito)
    (at crate2 deposito)
    (contenido-caja crate1 comida)
    (contenido-caja crate2 medicina)
    (at person1 loc2)
    (at person2 loc2)
    (person-needs person2 comida)
    (person-needs person2 medicina)
    (brazo-libre dron1)
    (dron-libre dron1)
    (brazo-libre dron2)
    (dron-libre dron2)
    (siguiente-t carrier1 n0 n1)
    (siguiente-t carrier1 n1 n2)
    (siguiente-t carrier1 n2 n3)
    (siguiente-t carrier1 n3 n4)
    (cajas-en carrier1 n0)
    (caja-libre crate1)
    (caja-libre crate2)
    (persona-libre person1)
    (persona-libre person2)
    (transportador-libre carrier1)
	(= (fly-cost deposito loc1) 247)
	(= (fly-cost deposito loc2) 197)
	(= (fly-cost loc1 deposito) 247)
	(= (fly-cost loc1 loc2) 170)
	(= (fly-cost loc2 deposito) 197)
	(= (fly-cost loc2 loc1) 170)
	(= (fly-cost deposito deposito) 999999)
	(= (fly-cost loc1 loc1) 999999)
	(= (fly-cost loc2 loc2) 999999)
(= (fly-cost deposito deposito) 999999)
  )

  (:goal (and
    (at dron1 deposito)
    (at dron2 deposito)
    (person-has person2 comida)
    (person-has person2 medicina)
    (at carrier1 deposito)
  ))

  (:metric minimize (total-time))
)
