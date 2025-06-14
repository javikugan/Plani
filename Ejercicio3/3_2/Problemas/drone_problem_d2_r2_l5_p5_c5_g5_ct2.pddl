(define (problem drone_problem_d2_r2_l5_p5_c5_g5_ct2)
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
    loc5 - location
    crate1 - caja
    crate2 - caja
    crate3 - caja
    crate4 - caja
    crate5 - caja
    comida - content
    medicina - content
    person1 - person
    person2 - person
    person3 - person
    person4 - person
    person5 - person
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
    (at crate5 deposito)
    (contenido-caja crate1 comida)
    (contenido-caja crate2 comida)
    (contenido-caja crate3 comida)
    (contenido-caja crate4 medicina)
    (contenido-caja crate5 medicina)
    (at person1 loc1)
    (at person2 loc1)
    (at person3 loc1)
    (at person4 loc5)
    (at person5 loc5)
    (person-needs person1 comida)
    (person-needs person2 comida)
    (person-needs person4 medicina)
    (person-needs person5 comida)
    (person-needs person5 medicina)
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
    (caja-libre crate5)
    (persona-libre person1)
    (persona-libre person2)
    (persona-libre person3)
    (persona-libre person4)
    (persona-libre person5)
    (transportador-libre carrier1)
    (transportador-libre carrier2)
	(= (fly-cost deposito loc1) 130)
	(= (fly-cost deposito loc2) 215)
	(= (fly-cost deposito loc3) 170)
	(= (fly-cost deposito loc4) 127)
	(= (fly-cost deposito loc5) 232)
	(= (fly-cost loc1 deposito) 130)
	(= (fly-cost loc1 loc2) 153)
	(= (fly-cost loc1 loc3) 44)
	(= (fly-cost loc1 loc4) 12)
	(= (fly-cost loc1 loc5) 116)
	(= (fly-cost loc2 deposito) 215)
	(= (fly-cost loc2 loc1) 153)
	(= (fly-cost loc2 loc3) 132)
	(= (fly-cost loc2 loc4) 164)
	(= (fly-cost loc2 loc5) 108)
	(= (fly-cost loc3 deposito) 170)
	(= (fly-cost loc3 loc1) 44)
	(= (fly-cost loc3 loc2) 132)
	(= (fly-cost loc3 loc4) 52)
	(= (fly-cost loc3 loc5) 73)
	(= (fly-cost loc4 deposito) 127)
	(= (fly-cost loc4 loc1) 12)
	(= (fly-cost loc4 loc2) 164)
	(= (fly-cost loc4 loc3) 52)
	(= (fly-cost loc4 loc5) 124)
	(= (fly-cost loc5 deposito) 232)
	(= (fly-cost loc5 loc1) 116)
	(= (fly-cost loc5 loc2) 108)
	(= (fly-cost loc5 loc3) 73)
	(= (fly-cost loc5 loc4) 124)
	(= (fly-cost deposito deposito) 999999)
	(= (fly-cost loc1 loc1) 999999)
	(= (fly-cost loc2 loc2) 999999)
	(= (fly-cost loc3 loc3) 999999)
	(= (fly-cost loc4 loc4) 999999)
	(= (fly-cost loc5 loc5) 999999)
(= (fly-cost deposito deposito) 999999)
  )

  (:goal (and
    (at dron1 deposito)
    (at dron2 deposito)
    (person-has person1 comida)
    (person-has person2 comida)
    (person-has person4 medicina)
    (person-has person5 comida)
    (person-has person5 medicina)
    (at carrier1 deposito)
    (at carrier2 deposito)
  ))

  (:metric minimize (total-time))
)
