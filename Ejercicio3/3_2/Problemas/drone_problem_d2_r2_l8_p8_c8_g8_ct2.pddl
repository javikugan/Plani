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
    (at person1 loc4)
    (at person2 loc1)
    (at person3 loc4)
    (at person4 loc8)
    (at person5 loc8)
    (at person6 loc6)
    (at person7 loc4)
    (at person8 loc3)
    (person-needs person1 medicina)
    (person-needs person2 comida)
    (person-needs person2 medicina)
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
	(= (fly-cost deposito loc1) 161)
	(= (fly-cost deposito loc2) 174)
	(= (fly-cost deposito loc3) 206)
	(= (fly-cost deposito loc4) 273)
	(= (fly-cost deposito loc5) 30)
	(= (fly-cost deposito loc6) 266)
	(= (fly-cost deposito loc7) 101)
	(= (fly-cost deposito loc8) 135)
	(= (fly-cost loc1 deposito) 161)
	(= (fly-cost loc1 loc2) 60)
	(= (fly-cost loc1 loc3) 143)
	(= (fly-cost loc1 loc4) 123)
	(= (fly-cost loc1 loc5) 133)
	(= (fly-cost loc1 loc6) 122)
	(= (fly-cost loc1 loc7) 68)
	(= (fly-cost loc1 loc8) 121)
	(= (fly-cost loc2 deposito) 174)
	(= (fly-cost loc2 loc1) 60)
	(= (fly-cost loc2 loc3) 202)
	(= (fly-cost loc2 loc4) 161)
	(= (fly-cost loc2 loc5) 146)
	(= (fly-cost loc2 loc6) 165)
	(= (fly-cost loc2 loc7) 108)
	(= (fly-cost loc2 loc8) 175)
	(= (fly-cost loc3 deposito) 206)
	(= (fly-cost loc3 loc1) 143)
	(= (fly-cost loc3 loc2) 202)
	(= (fly-cost loc3 loc4) 139)
	(= (fly-cost loc3 loc5) 193)
	(= (fly-cost loc3 loc6) 124)
	(= (fly-cost loc3 loc7) 128)
	(= (fly-cost loc3 loc8) 72)
	(= (fly-cost loc4 deposito) 273)
	(= (fly-cost loc4 loc1) 123)
	(= (fly-cost loc4 loc2) 161)
	(= (fly-cost loc4 loc3) 139)
	(= (fly-cost loc4 loc5) 248)
	(= (fly-cost loc4 loc6) 16)
	(= (fly-cost loc4 loc7) 172)
	(= (fly-cost loc4 loc8) 177)
	(= (fly-cost loc5 deposito) 30)
	(= (fly-cost loc5 loc1) 133)
	(= (fly-cost loc5 loc2) 146)
	(= (fly-cost loc5 loc3) 193)
	(= (fly-cost loc5 loc4) 248)
	(= (fly-cost loc5 loc6) 242)
	(= (fly-cost loc5 loc7) 77)
	(= (fly-cost loc5 loc8) 125)
	(= (fly-cost loc6 deposito) 266)
	(= (fly-cost loc6 loc1) 122)
	(= (fly-cost loc6 loc2) 165)
	(= (fly-cost loc6 loc3) 124)
	(= (fly-cost loc6 loc4) 16)
	(= (fly-cost loc6 loc5) 242)
	(= (fly-cost loc6 loc7) 166)
	(= (fly-cost loc6 loc8) 165)
	(= (fly-cost loc7 deposito) 101)
	(= (fly-cost loc7 loc1) 68)
	(= (fly-cost loc7 loc2) 108)
	(= (fly-cost loc7 loc3) 128)
	(= (fly-cost loc7 loc4) 172)
	(= (fly-cost loc7 loc5) 77)
	(= (fly-cost loc7 loc6) 166)
	(= (fly-cost loc7 loc8) 75)
	(= (fly-cost loc8 deposito) 135)
	(= (fly-cost loc8 loc1) 121)
	(= (fly-cost loc8 loc2) 175)
	(= (fly-cost loc8 loc3) 72)
	(= (fly-cost loc8 loc4) 177)
	(= (fly-cost loc8 loc5) 125)
	(= (fly-cost loc8 loc6) 165)
	(= (fly-cost loc8 loc7) 75)
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
    (person-has person1 medicina)
    (person-has person2 comida)
    (person-has person2 medicina)
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
