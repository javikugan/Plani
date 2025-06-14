(define (problem drone_problem_d2_r2_l6_p6_c6_g6_ct2)
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
    loc6 - location
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
    person4 - person
    person5 - person
    person6 - person
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
    (at crate6 deposito)
    (contenido-caja crate1 comida)
    (contenido-caja crate2 comida)
    (contenido-caja crate3 comida)
    (contenido-caja crate4 comida)
    (contenido-caja crate5 medicina)
    (contenido-caja crate6 medicina)
    (at person1 loc1)
    (at person2 loc4)
    (at person3 loc5)
    (at person4 loc6)
    (at person5 loc6)
    (at person6 loc3)
    (person-needs person1 comida)
    (person-needs person2 comida)
    (person-needs person4 comida)
    (person-needs person4 medicina)
    (person-needs person5 comida)
    (person-needs person6 medicina)
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
    (caja-libre crate6)
    (persona-libre person1)
    (persona-libre person2)
    (persona-libre person3)
    (persona-libre person4)
    (persona-libre person5)
    (persona-libre person6)
    (transportador-libre carrier1)
    (transportador-libre carrier2)
	(= (fly-cost deposito loc1) 124)
	(= (fly-cost deposito loc2) 141)
	(= (fly-cost deposito loc3) 154)
	(= (fly-cost deposito loc4) 116)
	(= (fly-cost deposito loc5) 179)
	(= (fly-cost deposito loc6) 71)
	(= (fly-cost loc1 deposito) 124)
	(= (fly-cost loc1 loc2) 75)
	(= (fly-cost loc1 loc3) 31)
	(= (fly-cost loc1 loc4) 68)
	(= (fly-cost loc1 loc5) 75)
	(= (fly-cost loc1 loc6) 77)
	(= (fly-cost loc2 deposito) 141)
	(= (fly-cost loc2 loc1) 75)
	(= (fly-cost loc2 loc3) 80)
	(= (fly-cost loc2 loc4) 25)
	(= (fly-cost loc2 loc5) 52)
	(= (fly-cost loc2 loc6) 70)
	(= (fly-cost loc3 deposito) 154)
	(= (fly-cost loc3 loc1) 31)
	(= (fly-cost loc3 loc2) 80)
	(= (fly-cost loc3 loc4) 83)
	(= (fly-cost loc3 loc5) 59)
	(= (fly-cost loc3 loc6) 103)
	(= (fly-cost loc4 deposito) 116)
	(= (fly-cost loc4 loc1) 68)
	(= (fly-cost loc4 loc2) 25)
	(= (fly-cost loc4 loc3) 83)
	(= (fly-cost loc4 loc5) 72)
	(= (fly-cost loc4 loc6) 45)
	(= (fly-cost loc5 deposito) 179)
	(= (fly-cost loc5 loc1) 75)
	(= (fly-cost loc5 loc2) 52)
	(= (fly-cost loc5 loc3) 59)
	(= (fly-cost loc5 loc4) 72)
	(= (fly-cost loc5 loc6) 112)
	(= (fly-cost loc6 deposito) 71)
	(= (fly-cost loc6 loc1) 77)
	(= (fly-cost loc6 loc2) 70)
	(= (fly-cost loc6 loc3) 103)
	(= (fly-cost loc6 loc4) 45)
	(= (fly-cost loc6 loc5) 112)
	(= (fly-cost deposito deposito) 999999)
	(= (fly-cost loc1 loc1) 999999)
	(= (fly-cost loc2 loc2) 999999)
	(= (fly-cost loc3 loc3) 999999)
	(= (fly-cost loc4 loc4) 999999)
	(= (fly-cost loc5 loc5) 999999)
	(= (fly-cost loc6 loc6) 999999)
(= (fly-cost deposito deposito) 999999)
  )

  (:goal (and
    (at dron1 deposito)
    (at dron2 deposito)
    (person-has person1 comida)
    (person-has person2 comida)
    (person-has person4 comida)
    (person-has person4 medicina)
    (person-has person5 comida)
    (person-has person6 medicina)
    (at carrier1 deposito)
    (at carrier2 deposito)
  ))

  (:metric minimize (total-time))
)
