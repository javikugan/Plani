(define (problem drone_problem_d2_r2_l4_p4_c4_g4_ct2)
  (:domain drone-domain)
  (:objects
    dron1 - dron
    dron2 - dron
    carrier1 - transportador
    carrier2 - transportador
    deposito - location
    loc1 - location
    loc2 - location
    loc3 - location
    loc4 - location
    crate1 - caja
    crate2 - caja
    crate3 - caja
    crate4 - caja
    comida - content
    medicina - content
    person1 - person
    person2 - person
    person3 - person
    person4 - person
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
    (at carrier2 deposito)
    (at crate1 deposito)
    (at crate2 deposito)
    (at crate3 deposito)
    (at crate4 deposito)
    (contenido-caja crate1 comida)
    (contenido-caja crate2 comida)
    (contenido-caja crate3 comida)
    (contenido-caja crate4 medicina)
    (at person1 loc2)
    (at person2 loc3)
    (at person3 loc1)
    (at person4 loc4)
    (person-needs person1 comida)
    (person-needs person1 medicina)
    (person-needs person2 comida)
    (person-needs person3 comida)
    (brazo-libre dron1)
    (dron-libre dron1)
    (brazo-libre dron2)
    (dron-libre dron2)
    (siguiente-t carrier1 n0 n1)
    (siguiente-t carrier1 n1 n2)
    (siguiente-t carrier1 n2 n3)
    (siguiente-t carrier1 n3 n4)
    (cajas-en carrier1 n0)
    (siguiente-t carrier2 n0 n1)
    (siguiente-t carrier2 n1 n2)
    (siguiente-t carrier2 n2 n3)
    (siguiente-t carrier2 n3 n4)
    (cajas-en carrier2 n0)
    (caja-libre crate1)
    (caja-libre crate2)
    (caja-libre crate3)
    (caja-libre crate4)
    (persona-libre person1)
    (persona-libre person2)
    (persona-libre person3)
    (persona-libre person4)
    (transportador-libre carrier1)
    (transportador-libre carrier2)
	(= (fly-cost deposito loc1) 186)
	(= (fly-cost deposito loc2) 72)
	(= (fly-cost deposito loc3) 75)
	(= (fly-cost deposito loc4) 89)
	(= (fly-cost loc1 deposito) 186)
	(= (fly-cost loc1 loc2) 154)
	(= (fly-cost loc1 loc3) 116)
	(= (fly-cost loc1 loc4) 100)
	(= (fly-cost loc2 deposito) 72)
	(= (fly-cost loc2 loc1) 154)
	(= (fly-cost loc2 loc3) 82)
	(= (fly-cost loc2 loc4) 62)
	(= (fly-cost loc3 deposito) 75)
	(= (fly-cost loc3 loc1) 116)
	(= (fly-cost loc3 loc2) 82)
	(= (fly-cost loc3 loc4) 38)
	(= (fly-cost loc4 deposito) 89)
	(= (fly-cost loc4 loc1) 100)
	(= (fly-cost loc4 loc2) 62)
	(= (fly-cost loc4 loc3) 38)
	(= (fly-cost deposito deposito) 999999)
	(= (fly-cost loc1 loc1) 999999)
	(= (fly-cost loc2 loc2) 999999)
	(= (fly-cost loc3 loc3) 999999)
	(= (fly-cost loc4 loc4) 999999)
(= (fly-cost deposito deposito) 999999)
  )

  (:goal (and
    (at dron1 deposito)
    (at dron2 deposito)
    (person-has person1 comida)
    (person-has person1 medicina)
    (person-has person2 comida)
    (person-has person3 comida)
    (at carrier1 deposito)
    (at carrier2 deposito)
  ))

  (:metric minimize (total-time))
)
