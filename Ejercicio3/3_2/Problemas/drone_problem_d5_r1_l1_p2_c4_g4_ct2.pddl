(define (problem drone_problem_d5_r1_l1_p2_c4_g4_ct2)
  (:domain drone-domain)
  (:objects
    dron1 - dron
    dron2 - dron
    dron3 - dron
    dron4 - dron
    dron5 - dron
    carrier1 - transportador
    deposito - location
    loc1 - location
    crate1 - caja
    crate2 - caja
    crate3 - caja
    crate4 - caja
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
    (at dron3 deposito)
    (at dron4 deposito)
    (at dron5 deposito)
    (at carrier1 deposito)
    (at crate1 deposito)
    (at crate2 deposito)
    (at crate3 deposito)
    (at crate4 deposito)
    (contenido-caja crate1 comida)
    (contenido-caja crate2 comida)
    (contenido-caja crate3 medicina)
    (contenido-caja crate4 medicina)
    (at person1 loc1)
    (at person2 loc1)
    (person-needs person1 comida)
    (person-needs person1 medicina)
    (person-needs person2 comida)
    (person-needs person2 medicina)
    (brazo-libre dron1)
    (dron-libre dron1)
    (brazo-libre dron2)
    (dron-libre dron2)
    (brazo-libre dron3)
    (dron-libre dron3)
    (brazo-libre dron4)
    (dron-libre dron4)
    (brazo-libre dron5)
    (dron-libre dron5)
    (siguiente-t carrier1 n0 n1)
    (siguiente-t carrier1 n1 n2)
    (siguiente-t carrier1 n2 n3)
    (siguiente-t carrier1 n3 n4)
    (cajas-en carrier1 n0)
    (caja-libre crate1)
    (caja-libre crate2)
    (caja-libre crate3)
    (caja-libre crate4)
    (persona-libre person1)
    (persona-libre person2)
    (transportador-libre carrier1)
	(= (fly-cost deposito loc1) 28)
	(= (fly-cost loc1 deposito) 28)
	(= (fly-cost deposito deposito) 999999)
	(= (fly-cost loc1 loc1) 999999)
(= (fly-cost deposito deposito) 999999)
  )

  (:goal (and
    (at dron1 deposito)
    (at dron2 deposito)
    (at dron3 deposito)
    (at dron4 deposito)
    (at dron5 deposito)
    (person-has person1 comida)
    (person-has person1 medicina)
    (person-has person2 comida)
    (person-has person2 medicina)
    (at carrier1 deposito)
  ))

  (:metric minimize (total-time))
)
