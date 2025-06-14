(define (problem drone_problem_d2_r2_l8_p8_c8_g8_ct2)
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
    (at crate8 deposito)
    (contenido-caja crate1 comida)
    (contenido-caja crate2 comida)
    (contenido-caja crate3 comida)
    (contenido-caja crate4 comida)
    (contenido-caja crate5 comida)
    (contenido-caja crate6 medicina)
    (contenido-caja crate7 medicina)
    (contenido-caja crate8 medicina)
    (at person1 loc1)
    (at person2 loc2)
    (at person3 loc3)
    (at person4 loc2)
    (at person5 loc1)
    (at person6 loc2)
    (at person7 loc7)
    (at person8 loc7)
    (person-needs person1 comida)
    (person-needs person3 medicina)
    (person-needs person4 comida)
    (person-needs person5 comida)
    (person-needs person6 comida)
    (person-needs person6 medicina)
    (person-needs person7 comida)
    (person-needs person8 medicina)
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
    (caja-libre crate8)
    (persona-libre person1)
    (persona-libre person2)
    (persona-libre person3)
    (persona-libre person4)
    (persona-libre person5)
    (persona-libre person6)
    (persona-libre person7)
    (persona-libre person8)
    (transportador-libre carrier1)
    (transportador-libre carrier2)
	(= (fly-cost deposito loc1) 64)
	(= (fly-cost deposito loc2) 187)
	(= (fly-cost deposito loc3) 192)
	(= (fly-cost deposito loc4) 62)
	(= (fly-cost deposito loc5) 122)
	(= (fly-cost deposito loc6) 172)
	(= (fly-cost deposito loc7) 93)
	(= (fly-cost deposito loc8) 17)
	(= (fly-cost loc1 deposito) 64)
	(= (fly-cost loc1 loc2) 131)
	(= (fly-cost loc1 loc3) 157)
	(= (fly-cost loc1 loc4) 8)
	(= (fly-cost loc1 loc5) 86)
	(= (fly-cost loc1 loc6) 131)
	(= (fly-cost loc1 loc7) 41)
	(= (fly-cost loc1 loc8) 50)
	(= (fly-cost loc2 deposito) 187)
	(= (fly-cost loc2 loc1) 131)
	(= (fly-cost loc2 loc3) 218)
	(= (fly-cost loc2 loc4) 137)
	(= (fly-cost loc2 loc5) 173)
	(= (fly-cost loc2 loc6) 187)
	(= (fly-cost loc2 loc7) 94)
	(= (fly-cost loc2 loc8) 176)
	(= (fly-cost loc3 deposito) 192)
	(= (fly-cost loc3 loc1) 157)
	(= (fly-cost loc3 loc2) 218)
	(= (fly-cost loc3 loc4) 151)
	(= (fly-cost loc3 loc5) 73)
	(= (fly-cost loc3 loc6) 32)
	(= (fly-cost loc3 loc7) 180)
	(= (fly-cost loc3 loc8) 177)
	(= (fly-cost loc4 deposito) 62)
	(= (fly-cost loc4 loc1) 8)
	(= (fly-cost loc4 loc2) 137)
	(= (fly-cost loc4 loc3) 151)
	(= (fly-cost loc4 loc5) 79)
	(= (fly-cost loc4 loc6) 126)
	(= (fly-cost loc4 loc7) 48)
	(= (fly-cost loc4 loc8) 47)
	(= (fly-cost loc5 deposito) 122)
	(= (fly-cost loc5 loc1) 86)
	(= (fly-cost loc5 loc2) 173)
	(= (fly-cost loc5 loc3) 73)
	(= (fly-cost loc5 loc4) 79)
	(= (fly-cost loc5 loc6) 51)
	(= (fly-cost loc5 loc7) 113)
	(= (fly-cost loc5 loc8) 107)
	(= (fly-cost loc6 deposito) 172)
	(= (fly-cost loc6 loc1) 131)
	(= (fly-cost loc6 loc2) 187)
	(= (fly-cost loc6 loc3) 32)
	(= (fly-cost loc6 loc4) 126)
	(= (fly-cost loc6 loc5) 51)
	(= (fly-cost loc6 loc7) 150)
	(= (fly-cost loc6 loc8) 157)
	(= (fly-cost loc7 deposito) 93)
	(= (fly-cost loc7 loc1) 41)
	(= (fly-cost loc7 loc2) 94)
	(= (fly-cost loc7 loc3) 180)
	(= (fly-cost loc7 loc4) 48)
	(= (fly-cost loc7 loc5) 113)
	(= (fly-cost loc7 loc6) 150)
	(= (fly-cost loc7 loc8) 83)
	(= (fly-cost loc8 deposito) 17)
	(= (fly-cost loc8 loc1) 50)
	(= (fly-cost loc8 loc2) 176)
	(= (fly-cost loc8 loc3) 177)
	(= (fly-cost loc8 loc4) 47)
	(= (fly-cost loc8 loc5) 107)
	(= (fly-cost loc8 loc6) 157)
	(= (fly-cost loc8 loc7) 83)
	(= (fly-cost deposito deposito) 999999)
	(= (fly-cost loc1 loc1) 999999)
	(= (fly-cost loc2 loc2) 999999)
	(= (fly-cost loc3 loc3) 999999)
	(= (fly-cost loc4 loc4) 999999)
	(= (fly-cost loc5 loc5) 999999)
	(= (fly-cost loc6 loc6) 999999)
	(= (fly-cost loc7 loc7) 999999)
	(= (fly-cost loc8 loc8) 999999)
(= (fly-cost deposito deposito) 999999)
  )

  (:goal (and
    (at dron1 deposito)
    (at dron2 deposito)
    (person-has person1 comida)
    (person-has person3 medicina)
    (person-has person4 comida)
    (person-has person5 comida)
    (person-has person6 comida)
    (person-has person6 medicina)
    (person-has person7 comida)
    (person-has person8 medicina)
    (at carrier1 deposito)
    (at carrier2 deposito)
  ))

  (:metric minimize (total-time))
)
