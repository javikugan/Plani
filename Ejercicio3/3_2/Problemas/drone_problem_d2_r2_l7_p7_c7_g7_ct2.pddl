(define (problem drone_problem_d2_r2_l7_p7_c7_g7_ct2)
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
    loc7 - location
    crate1 - caja
    crate2 - caja
    crate3 - caja
    crate4 - caja
    crate5 - caja
    crate6 - caja
    crate7 - caja
    comida - content
    medicina - content
    person1 - person
    person2 - person
    person3 - person
    person4 - person
    person5 - person
    person6 - person
    person7 - person
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
    (at crate7 deposito)
    (contenido-caja crate1 comida)
    (contenido-caja crate2 comida)
    (contenido-caja crate3 comida)
    (contenido-caja crate4 comida)
    (contenido-caja crate5 comida)
    (contenido-caja crate6 comida)
    (contenido-caja crate7 medicina)
    (at person1 loc2)
    (at person2 loc7)
    (at person3 loc7)
    (at person4 loc3)
    (at person5 loc1)
    (at person6 loc6)
    (at person7 loc4)
    (person-needs person1 comida)
    (person-needs person2 comida)
    (person-needs person3 comida)
    (person-needs person4 comida)
    (person-needs person5 comida)
    (person-needs person6 comida)
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
    (caja-libre crate7)
    (persona-libre person1)
    (persona-libre person2)
    (persona-libre person3)
    (persona-libre person4)
    (persona-libre person5)
    (persona-libre person6)
    (persona-libre person7)
    (transportador-libre carrier1)
    (transportador-libre carrier2)
	(= (fly-cost deposito loc1) 120)
	(= (fly-cost deposito loc2) 38)
	(= (fly-cost deposito loc3) 70)
	(= (fly-cost deposito loc4) 161)
	(= (fly-cost deposito loc5) 97)
	(= (fly-cost deposito loc6) 66)
	(= (fly-cost deposito loc7) 145)
	(= (fly-cost loc1 deposito) 120)
	(= (fly-cost loc1 loc2) 84)
	(= (fly-cost loc1 loc3) 72)
	(= (fly-cost loc1 loc4) 68)
	(= (fly-cost loc1 loc5) 47)
	(= (fly-cost loc1 loc6) 72)
	(= (fly-cost loc1 loc7) 26)
	(= (fly-cost loc2 deposito) 38)
	(= (fly-cost loc2 loc1) 84)
	(= (fly-cost loc2 loc3) 50)
	(= (fly-cost loc2 loc4) 132)
	(= (fly-cost loc2 loc5) 69)
	(= (fly-cost loc2 loc6) 32)
	(= (fly-cost loc2 loc7) 108)
	(= (fly-cost loc3 deposito) 70)
	(= (fly-cost loc3 loc1) 72)
	(= (fly-cost loc3 loc2) 50)
	(= (fly-cost loc3 loc4) 93)
	(= (fly-cost loc3 loc5) 31)
	(= (fly-cost loc3 loc6) 70)
	(= (fly-cost loc3 loc7) 97)
	(= (fly-cost loc4 deposito) 161)
	(= (fly-cost loc4 loc1) 68)
	(= (fly-cost loc4 loc2) 132)
	(= (fly-cost loc4 loc3) 93)
	(= (fly-cost loc4 loc5) 65)
	(= (fly-cost loc4 loc6) 132)
	(= (fly-cost loc4 loc7) 71)
	(= (fly-cost loc5 deposito) 97)
	(= (fly-cost loc5 loc1) 47)
	(= (fly-cost loc5 loc2) 69)
	(= (fly-cost loc5 loc3) 31)
	(= (fly-cost loc5 loc4) 65)
	(= (fly-cost loc5 loc6) 76)
	(= (fly-cost loc5 loc7) 71)
	(= (fly-cost loc6 deposito) 66)
	(= (fly-cost loc6 loc1) 72)
	(= (fly-cost loc6 loc2) 32)
	(= (fly-cost loc6 loc3) 70)
	(= (fly-cost loc6 loc4) 132)
	(= (fly-cost loc6 loc5) 76)
	(= (fly-cost loc6 loc7) 91)
	(= (fly-cost loc7 deposito) 145)
	(= (fly-cost loc7 loc1) 26)
	(= (fly-cost loc7 loc2) 108)
	(= (fly-cost loc7 loc3) 97)
	(= (fly-cost loc7 loc4) 71)
	(= (fly-cost loc7 loc5) 71)
	(= (fly-cost loc7 loc6) 91)
	(= (fly-cost deposito deposito) 999999)
	(= (fly-cost loc1 loc1) 999999)
	(= (fly-cost loc2 loc2) 999999)
	(= (fly-cost loc3 loc3) 999999)
	(= (fly-cost loc4 loc4) 999999)
	(= (fly-cost loc5 loc5) 999999)
	(= (fly-cost loc6 loc6) 999999)
	(= (fly-cost loc7 loc7) 999999)
(= (fly-cost deposito deposito) 999999)
  )

  (:goal (and
    (at dron1 deposito)
    (at dron2 deposito)
    (person-has person1 comida)
    (person-has person2 comida)
    (person-has person3 comida)
    (person-has person4 comida)
    (person-has person5 comida)
    (person-has person6 comida)
    (person-has person6 medicina)
    (at carrier1 deposito)
    (at carrier2 deposito)
  ))

  (:metric minimize (total-time))
)
