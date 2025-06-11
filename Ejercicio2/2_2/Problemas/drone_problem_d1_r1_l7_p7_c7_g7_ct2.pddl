(define (problem drone_problem_d1_r1_l7_p7_c7_g7_ct2)
  (:domain drone-domain)
  (:objects
    dron1 - dron
    carrier1 - transportador
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
    (at carrier1 deposito)
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
    (contenido-caja crate6 medicina)
    (contenido-caja crate7 medicina)
    (at person1 loc5)
    (at person2 loc7)
    (at person3 loc6)
    (at person4 loc5)
    (at person5 loc1)
    (at person6 loc7)
    (at person7 loc5)
    (person-needs person1 comida)
    (person-needs person1 medicina)
    (person-needs person2 comida)
    (person-needs person3 comida)
    (person-needs person5 comida)
    (person-needs person7 comida)
    (person-needs person7 medicina)
    (brazo-libre dron1)
    (siguiente-t carrier1 n0 n1)
    (siguiente-t carrier1 n1 n2)
    (siguiente-t carrier1 n2 n3)
    (siguiente-t carrier1 n3 n4)
    (cajas-en carrier1 n0)
	(= (total-cost) 0 )
	(= (fly-cost deposito deposito) 0)
	(= (fly-cost deposito loc1) 111)
	(= (fly-cost deposito loc2) 219)
	(= (fly-cost deposito loc3) 175)
	(= (fly-cost deposito loc4) 93)
	(= (fly-cost deposito loc5) 84)
	(= (fly-cost deposito loc6) 191)
	(= (fly-cost deposito loc7) 178)
	(= (fly-cost loc1 deposito) 111)
	(= (fly-cost loc1 loc1) 0)
	(= (fly-cost loc1 loc2) 129)
	(= (fly-cost loc1 loc3) 83)
	(= (fly-cost loc1 loc4) 54)
	(= (fly-cost loc1 loc5) 54)
	(= (fly-cost loc1 loc6) 140)
	(= (fly-cost loc1 loc7) 187)
	(= (fly-cost loc2 deposito) 219)
	(= (fly-cost loc2 loc1) 129)
	(= (fly-cost loc2 loc2) 0)
	(= (fly-cost loc2 loc3) 47)
	(= (fly-cost loc2 loc4) 127)
	(= (fly-cost loc2 loc5) 136)
	(= (fly-cost loc2 loc6) 78)
	(= (fly-cost loc2 loc7) 175)
	(= (fly-cost loc3 deposito) 175)
	(= (fly-cost loc3 loc1) 83)
	(= (fly-cost loc3 loc2) 47)
	(= (fly-cost loc3 loc3) 0)
	(= (fly-cost loc3 loc4) 84)
	(= (fly-cost loc3 loc5) 93)
	(= (fly-cost loc3 loc6) 81)
	(= (fly-cost loc3 loc7) 164)
	(= (fly-cost loc4 deposito) 93)
	(= (fly-cost loc4 loc1) 54)
	(= (fly-cost loc4 loc2) 127)
	(= (fly-cost loc4 loc3) 84)
	(= (fly-cost loc4 loc4) 0)
	(= (fly-cost loc4 loc5) 10)
	(= (fly-cost loc4 loc6) 107)
	(= (fly-cost loc4 loc7) 135)
	(= (fly-cost loc5 deposito) 84)
	(= (fly-cost loc5 loc1) 54)
	(= (fly-cost loc5 loc2) 136)
	(= (fly-cost loc5 loc3) 93)
	(= (fly-cost loc5 loc4) 10)
	(= (fly-cost loc5 loc5) 0)
	(= (fly-cost loc5 loc6) 116)
	(= (fly-cost loc5 loc7) 139)
	(= (fly-cost loc6 deposito) 191)
	(= (fly-cost loc6 loc1) 140)
	(= (fly-cost loc6 loc2) 78)
	(= (fly-cost loc6 loc3) 81)
	(= (fly-cost loc6 loc4) 107)
	(= (fly-cost loc6 loc5) 116)
	(= (fly-cost loc6 loc6) 0)
	(= (fly-cost loc6 loc7) 99)
	(= (fly-cost loc7 deposito) 178)
	(= (fly-cost loc7 loc1) 187)
	(= (fly-cost loc7 loc2) 175)
	(= (fly-cost loc7 loc3) 164)
	(= (fly-cost loc7 loc4) 135)
	(= (fly-cost loc7 loc5) 139)
	(= (fly-cost loc7 loc6) 99)
	(= (fly-cost loc7 loc7) 0)
  )

  (:goal (and
    (at dron1 deposito)
    (person-has person1 comida)
    (person-has person1 medicina)
    (person-has person2 comida)
    (person-has person3 comida)
    (person-has person5 comida)
    (person-has person7 comida)
    (person-has person7 medicina)
    (at carrier1 deposito)
  ))

   (:metric minimize (total-cost))

)
