(define (problem drone_problem_d3_r2_l6_p6_c6_g6_ct2)
  (:domain drone-domain)
  (:objects
    dron1 - dron
    dron2 - dron
    dron3 - dron
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
    (at dron3 deposito)
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
    (contenido-caja crate4 medicina)
    (contenido-caja crate5 medicina)
    (contenido-caja crate6 medicina)
    (at person1 loc5)
    (at person2 loc2)
    (at person3 loc3)
    (at person4 loc4)
    (at person5 loc2)
    (at person6 loc5)
    (person-needs person1 comida)
    (person-needs person1 medicina)
    (person-needs person2 comida)
    (person-needs person2 medicina)
    (person-needs person3 medicina)
    (person-needs person6 comida)
    (brazo-libre dron1)
    (dron-libre dron1)
    (brazo-libre dron2)
    (dron-libre dron2)
    (brazo-libre dron3)
    (dron-libre dron3)
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
	(= (fly-cost deposito loc1) 195)
	(= (fly-cost deposito loc2) 168)
	(= (fly-cost deposito loc3) 172)
	(= (fly-cost deposito loc4) 119)
	(= (fly-cost deposito loc5) 150)
	(= (fly-cost deposito loc6) 173)
	(= (fly-cost loc1 deposito) 195)
	(= (fly-cost loc1 loc2) 42)
	(= (fly-cost loc1 loc3) 55)
	(= (fly-cost loc1 loc4) 126)
	(= (fly-cost loc1 loc5) 111)
	(= (fly-cost loc1 loc6) 64)
	(= (fly-cost loc2 deposito) 168)
	(= (fly-cost loc2 loc1) 42)
	(= (fly-cost loc2 loc3) 76)
	(= (fly-cost loc2 loc4) 127)
	(= (fly-cost loc2 loc5) 122)
	(= (fly-cost loc2 loc6) 26)
	(= (fly-cost loc3 deposito) 172)
	(= (fly-cost loc3 loc1) 55)
	(= (fly-cost loc3 loc2) 76)
	(= (fly-cost loc3 loc4) 78)
	(= (fly-cost loc3 loc5) 58)
	(= (fly-cost loc3 loc6) 101)
	(= (fly-cost loc4 deposito) 119)
	(= (fly-cost loc4 loc1) 126)
	(= (fly-cost loc4 loc2) 127)
	(= (fly-cost loc4 loc3) 78)
	(= (fly-cost loc4 loc5) 33)
	(= (fly-cost loc4 loc6) 147)
	(= (fly-cost loc5 deposito) 150)
	(= (fly-cost loc5 loc1) 111)
	(= (fly-cost loc5 loc2) 122)
	(= (fly-cost loc5 loc3) 58)
	(= (fly-cost loc5 loc4) 33)
	(= (fly-cost loc5 loc6) 146)
	(= (fly-cost loc6 deposito) 173)
	(= (fly-cost loc6 loc1) 64)
	(= (fly-cost loc6 loc2) 26)
	(= (fly-cost loc6 loc3) 101)
	(= (fly-cost loc6 loc4) 147)
	(= (fly-cost loc6 loc5) 146)
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
    (at dron3 deposito)
    (person-has person1 comida)
    (person-has person1 medicina)
    (person-has person2 comida)
    (person-has person2 medicina)
    (person-has person3 medicina)
    (person-has person6 comida)
    (at carrier1 deposito)
    (at carrier2 deposito)
  ))

  (:metric minimize (total-time))
)
