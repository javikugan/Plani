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
    (contenido-caja crate3 medicina)
    (contenido-caja crate4 medicina)
    (contenido-caja crate5 medicina)
    (contenido-caja crate6 medicina)
    (contenido-caja crate7 medicina)
    (at person1 loc3)
    (at person2 loc5)
    (at person3 loc3)
    (at person4 loc7)
    (at person5 loc2)
    (at person6 loc3)
    (at person7 loc2)
    (person-needs person2 comida)
    (person-needs person2 medicina)
    (person-needs person4 comida)
    (person-needs person4 medicina)
    (person-needs person5 medicina)
    (person-needs person6 medicina)
    (person-needs person7 medicina)
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
	(= (fly-cost deposito loc1) 233)
	(= (fly-cost deposito loc2) 118)
	(= (fly-cost deposito loc3) 227)
	(= (fly-cost deposito loc4) 63)
	(= (fly-cost deposito loc5) 145)
	(= (fly-cost deposito loc6) 93)
	(= (fly-cost deposito loc7) 148)
	(= (fly-cost loc1 deposito) 233)
	(= (fly-cost loc1 loc2) 128)
	(= (fly-cost loc1 loc3) 17)
	(= (fly-cost loc1 loc4) 172)
	(= (fly-cost loc1 loc5) 104)
	(= (fly-cost loc1 loc6) 155)
	(= (fly-cost loc1 loc7) 122)
	(= (fly-cost loc2 deposito) 118)
	(= (fly-cost loc2 loc1) 128)
	(= (fly-cost loc2 loc3) 127)
	(= (fly-cost loc2 loc4) 57)
	(= (fly-cost loc2 loc5) 27)
	(= (fly-cost loc2 loc6) 85)
	(= (fly-cost loc2 loc7) 35)
	(= (fly-cost loc3 deposito) 227)
	(= (fly-cost loc3 loc1) 17)
	(= (fly-cost loc3 loc2) 127)
	(= (fly-cost loc3 loc4) 168)
	(= (fly-cost loc3 loc5) 106)
	(= (fly-cost loc3 loc6) 145)
	(= (fly-cost loc3 loc7) 126)
	(= (fly-cost loc4 deposito) 63)
	(= (fly-cost loc4 loc1) 172)
	(= (fly-cost loc4 loc2) 57)
	(= (fly-cost loc4 loc3) 168)
	(= (fly-cost loc4 loc5) 83)
	(= (fly-cost loc4 loc6) 59)
	(= (fly-cost loc4 loc7) 90)
	(= (fly-cost loc5 deposito) 145)
	(= (fly-cost loc5 loc1) 104)
	(= (fly-cost loc5 loc2) 27)
	(= (fly-cost loc5 loc3) 106)
	(= (fly-cost loc5 loc4) 83)
	(= (fly-cost loc5 loc6) 100)
	(= (fly-cost loc5 loc7) 26)
	(= (fly-cost loc6 deposito) 93)
	(= (fly-cost loc6 loc1) 155)
	(= (fly-cost loc6 loc2) 85)
	(= (fly-cost loc6 loc3) 145)
	(= (fly-cost loc6 loc4) 59)
	(= (fly-cost loc6 loc5) 100)
	(= (fly-cost loc6 loc7) 119)
	(= (fly-cost loc7 deposito) 148)
	(= (fly-cost loc7 loc1) 122)
	(= (fly-cost loc7 loc2) 35)
	(= (fly-cost loc7 loc3) 126)
	(= (fly-cost loc7 loc4) 90)
	(= (fly-cost loc7 loc5) 26)
	(= (fly-cost loc7 loc6) 119)
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
    (person-has person2 comida)
    (person-has person2 medicina)
    (person-has person4 comida)
    (person-has person4 medicina)
    (person-has person5 medicina)
    (person-has person6 medicina)
    (person-has person7 medicina)
    (at carrier1 deposito)
    (at carrier2 deposito)
  ))

  (:metric minimize (total-time))
)
