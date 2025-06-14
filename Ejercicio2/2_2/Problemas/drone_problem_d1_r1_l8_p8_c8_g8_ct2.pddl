(define (problem drone_problem_d1_r1_l8_p8_c8_g8_ct2)
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
    loc8 - location
    crate1 - caja
    crate2 - caja
    crate3 - caja
    crate4 - caja
    crate5 - caja
    crate6 - caja
    crate7 - caja
    crate8 - caja
    comida - content
    medicina - content
    person1 - person
    person2 - person
    person3 - person
    person4 - person
    person5 - person
    person6 - person
    person7 - person
    person8 - person
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
    (at crate8 deposito)
    (contenido-caja crate1 comida)
    (contenido-caja crate2 comida)
    (contenido-caja crate3 comida)
    (contenido-caja crate4 comida)
    (contenido-caja crate5 medicina)
    (contenido-caja crate6 medicina)
    (contenido-caja crate7 medicina)
    (contenido-caja crate8 medicina)
    (at person1 loc7)
    (at person2 loc8)
    (at person3 loc6)
    (at person4 loc2)
    (at person5 loc4)
    (at person6 loc4)
    (at person7 loc1)
    (at person8 loc5)
    (person-needs person1 medicina)
    (person-needs person2 comida)
    (person-needs person2 medicina)
    (person-needs person3 comida)
    (person-needs person4 comida)
    (person-needs person5 medicina)
    (person-needs person6 medicina)
    (person-needs person7 comida)
    (brazo-libre dron1)
    (siguiente-t carrier1 n0 n1)
    (siguiente-t carrier1 n1 n2)
    (siguiente-t carrier1 n2 n3)
    (siguiente-t carrier1 n3 n4)
    (cajas-en carrier1 n0)
	(= (total-cost) 0 )
	(= (fly-cost deposito deposito) 0)
	(= (fly-cost deposito loc1) 121)
	(= (fly-cost deposito loc2) 71)
	(= (fly-cost deposito loc3) 190)
	(= (fly-cost deposito loc4) 191)
	(= (fly-cost deposito loc5) 139)
	(= (fly-cost deposito loc6) 151)
	(= (fly-cost deposito loc7) 36)
	(= (fly-cost deposito loc8) 95)
	(= (fly-cost loc1 deposito) 121)
	(= (fly-cost loc1 loc1) 0)
	(= (fly-cost loc1 loc2) 50)
	(= (fly-cost loc1 loc3) 72)
	(= (fly-cost loc1 loc4) 111)
	(= (fly-cost loc1 loc5) 103)
	(= (fly-cost loc1 loc6) 68)
	(= (fly-cost loc1 loc7) 102)
	(= (fly-cost loc1 loc8) 60)
	(= (fly-cost loc2 deposito) 71)
	(= (fly-cost loc2 loc1) 50)
	(= (fly-cost loc2 loc2) 0)
	(= (fly-cost loc2 loc3) 120)
	(= (fly-cost loc2 loc4) 137)
	(= (fly-cost loc2 loc5) 103)
	(= (fly-cost loc2 loc6) 93)
	(= (fly-cost loc2 loc7) 55)
	(= (fly-cost loc2 loc8) 48)
	(= (fly-cost loc3 deposito) 190)
	(= (fly-cost loc3 loc1) 72)
	(= (fly-cost loc3 loc2) 120)
	(= (fly-cost loc3 loc3) 0)
	(= (fly-cost loc3 loc4) 87)
	(= (fly-cost loc3 loc5) 122)
	(= (fly-cost loc3 loc6) 71)
	(= (fly-cost loc3 loc7) 166)
	(= (fly-cost loc3 loc8) 109)
	(= (fly-cost loc4 deposito) 191)
	(= (fly-cost loc4 loc1) 111)
	(= (fly-cost loc4 loc2) 137)
	(= (fly-cost loc4 loc3) 87)
	(= (fly-cost loc4 loc4) 0)
	(= (fly-cost loc4 loc5) 64)
	(= (fly-cost loc4 loc6) 45)
	(= (fly-cost loc4 loc7) 157)
	(= (fly-cost loc4 loc8) 97)
	(= (fly-cost loc5 deposito) 139)
	(= (fly-cost loc5 loc1) 103)
	(= (fly-cost loc5 loc2) 103)
	(= (fly-cost loc5 loc3) 122)
	(= (fly-cost loc5 loc4) 64)
	(= (fly-cost loc5 loc5) 0)
	(= (fly-cost loc5 loc6) 52)
	(= (fly-cost loc5 loc7) 104)
	(= (fly-cost loc5 loc8) 56)
	(= (fly-cost loc6 deposito) 151)
	(= (fly-cost loc6 loc1) 68)
	(= (fly-cost loc6 loc2) 93)
	(= (fly-cost loc6 loc3) 71)
	(= (fly-cost loc6 loc4) 45)
	(= (fly-cost loc6 loc5) 52)
	(= (fly-cost loc6 loc6) 0)
	(= (fly-cost loc6 loc7) 120)
	(= (fly-cost loc6 loc8) 57)
	(= (fly-cost loc7 deposito) 36)
	(= (fly-cost loc7 loc1) 102)
	(= (fly-cost loc7 loc2) 55)
	(= (fly-cost loc7 loc3) 166)
	(= (fly-cost loc7 loc4) 157)
	(= (fly-cost loc7 loc5) 104)
	(= (fly-cost loc7 loc6) 120)
	(= (fly-cost loc7 loc7) 0)
	(= (fly-cost loc7 loc8) 63)
	(= (fly-cost loc8 deposito) 95)
	(= (fly-cost loc8 loc1) 60)
	(= (fly-cost loc8 loc2) 48)
	(= (fly-cost loc8 loc3) 109)
	(= (fly-cost loc8 loc4) 97)
	(= (fly-cost loc8 loc5) 56)
	(= (fly-cost loc8 loc6) 57)
	(= (fly-cost loc8 loc7) 63)
	(= (fly-cost loc8 loc8) 0)
  )

  (:goal (and
    (at dron1 deposito)
    (person-has person1 medicina)
    (person-has person2 comida)
    (person-has person2 medicina)
    (person-has person3 comida)
    (person-has person4 comida)
    (person-has person5 medicina)
    (person-has person6 medicina)
    (person-has person7 comida)
    (at carrier1 deposito)
  ))

   (:metric minimize (total-cost))

)
