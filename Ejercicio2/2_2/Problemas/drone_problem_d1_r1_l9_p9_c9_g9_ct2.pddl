(define (problem drone_problem_d1_r1_l9_p9_c9_g9_ct2)
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
    loc9 - location
    crate1 - caja
    crate2 - caja
    crate3 - caja
    crate4 - caja
    crate5 - caja
    crate6 - caja
    crate7 - caja
    crate8 - caja
    crate9 - caja
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
    person9 - person
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
    (at crate9 deposito)
    (contenido-caja crate1 comida)
    (contenido-caja crate2 comida)
    (contenido-caja crate3 comida)
    (contenido-caja crate4 comida)
    (contenido-caja crate5 comida)
    (contenido-caja crate6 comida)
    (contenido-caja crate7 comida)
    (contenido-caja crate8 comida)
    (contenido-caja crate9 medicina)
    (at person1 loc7)
    (at person2 loc8)
    (at person3 loc8)
    (at person4 loc7)
    (at person5 loc9)
    (at person6 loc7)
    (at person7 loc7)
    (at person8 loc8)
    (at person9 loc7)
    (person-needs person1 comida)
    (person-needs person2 comida)
    (person-needs person4 comida)
    (person-needs person5 comida)
    (person-needs person6 comida)
    (person-needs person7 comida)
    (person-needs person8 comida)
    (person-needs person8 medicina)
    (person-needs person9 comida)
    (brazo-libre dron1)
    (siguiente-t carrier1 n0 n1)
    (siguiente-t carrier1 n1 n2)
    (siguiente-t carrier1 n2 n3)
    (siguiente-t carrier1 n3 n4)
    (cajas-en carrier1 n0)
	(= (total-cost) 0 )
	(= (fly-cost deposito deposito) 0)
	(= (fly-cost deposito loc1) 174)
	(= (fly-cost deposito loc2) 191)
	(= (fly-cost deposito loc3) 133)
	(= (fly-cost deposito loc4) 249)
	(= (fly-cost deposito loc5) 188)
	(= (fly-cost deposito loc6) 220)
	(= (fly-cost deposito loc7) 142)
	(= (fly-cost deposito loc8) 175)
	(= (fly-cost deposito loc9) 167)
	(= (fly-cost loc1 deposito) 174)
	(= (fly-cost loc1 loc1) 0)
	(= (fly-cost loc1 loc2) 181)
	(= (fly-cost loc1 loc3) 46)
	(= (fly-cost loc1 loc4) 136)
	(= (fly-cost loc1 loc5) 72)
	(= (fly-cost loc1 loc6) 103)
	(= (fly-cost loc1 loc7) 172)
	(= (fly-cost loc1 loc8) 206)
	(= (fly-cost loc1 loc9) 221)
	(= (fly-cost loc2 deposito) 191)
	(= (fly-cost loc2 loc1) 181)
	(= (fly-cost loc2 loc2) 0)
	(= (fly-cost loc2 loc3) 184)
	(= (fly-cost loc2 loc4) 120)
	(= (fly-cost loc2 loc5) 120)
	(= (fly-cost loc2 loc6) 118)
	(= (fly-cost loc2 loc7) 52)
	(= (fly-cost loc2 loc8) 44)
	(= (fly-cost loc2 loc9) 71)
	(= (fly-cost loc3 deposito) 133)
	(= (fly-cost loc3 loc1) 46)
	(= (fly-cost loc3 loc2) 184)
	(= (fly-cost loc3 loc3) 0)
	(= (fly-cost loc3 loc4) 168)
	(= (fly-cost loc3 loc5) 98)
	(= (fly-cost loc3 loc6) 133)
	(= (fly-cost loc3 loc7) 162)
	(= (fly-cost loc3 loc8) 199)
	(= (fly-cost loc3 loc9) 209)
	(= (fly-cost loc4 deposito) 249)
	(= (fly-cost loc4 loc1) 136)
	(= (fly-cost loc4 loc2) 120)
	(= (fly-cost loc4 loc3) 168)
	(= (fly-cost loc4 loc4) 0)
	(= (fly-cost loc4 loc5) 70)
	(= (fly-cost loc4 loc6) 35)
	(= (fly-cost loc4 loc7) 152)
	(= (fly-cost loc4 loc8) 162)
	(= (fly-cost loc4 loc9) 189)
	(= (fly-cost loc5 deposito) 188)
	(= (fly-cost loc5 loc1) 72)
	(= (fly-cost loc5 loc2) 120)
	(= (fly-cost loc5 loc3) 98)
	(= (fly-cost loc5 loc4) 70)
	(= (fly-cost loc5 loc5) 0)
	(= (fly-cost loc5 loc6) 36)
	(= (fly-cost loc5 loc7) 127)
	(= (fly-cost loc5 loc8) 153)
	(= (fly-cost loc5 loc9) 174)
	(= (fly-cost loc6 deposito) 220)
	(= (fly-cost loc6 loc1) 103)
	(= (fly-cost loc6 loc2) 118)
	(= (fly-cost loc6 loc3) 133)
	(= (fly-cost loc6 loc4) 35)
	(= (fly-cost loc6 loc5) 36)
	(= (fly-cost loc6 loc6) 0)
	(= (fly-cost loc6 loc7) 139)
	(= (fly-cost loc6 loc8) 157)
	(= (fly-cost loc6 loc9) 181)
	(= (fly-cost loc7 deposito) 142)
	(= (fly-cost loc7 loc1) 172)
	(= (fly-cost loc7 loc2) 52)
	(= (fly-cost loc7 loc3) 162)
	(= (fly-cost loc7 loc4) 152)
	(= (fly-cost loc7 loc5) 127)
	(= (fly-cost loc7 loc6) 139)
	(= (fly-cost loc7 loc7) 0)
	(= (fly-cost loc7 loc8) 39)
	(= (fly-cost loc7 loc9) 50)
	(= (fly-cost loc8 deposito) 175)
	(= (fly-cost loc8 loc1) 206)
	(= (fly-cost loc8 loc2) 44)
	(= (fly-cost loc8 loc3) 199)
	(= (fly-cost loc8 loc4) 162)
	(= (fly-cost loc8 loc5) 153)
	(= (fly-cost loc8 loc6) 157)
	(= (fly-cost loc8 loc7) 39)
	(= (fly-cost loc8 loc8) 0)
	(= (fly-cost loc8 loc9) 28)
	(= (fly-cost loc9 deposito) 167)
	(= (fly-cost loc9 loc1) 221)
	(= (fly-cost loc9 loc2) 71)
	(= (fly-cost loc9 loc3) 209)
	(= (fly-cost loc9 loc4) 189)
	(= (fly-cost loc9 loc5) 174)
	(= (fly-cost loc9 loc6) 181)
	(= (fly-cost loc9 loc7) 50)
	(= (fly-cost loc9 loc8) 28)
	(= (fly-cost loc9 loc9) 0)
  )

  (:goal (and
    (at dron1 deposito)
    (person-has person1 comida)
    (person-has person2 comida)
    (person-has person4 comida)
    (person-has person5 comida)
    (person-has person6 comida)
    (person-has person7 comida)
    (person-has person8 comida)
    (person-has person8 medicina)
    (person-has person9 comida)
    (at carrier1 deposito)
  ))

   (:metric minimize (total-cost))

)
