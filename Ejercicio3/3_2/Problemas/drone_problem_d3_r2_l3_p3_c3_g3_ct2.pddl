(define (problem drone_problem_d3_r2_l3_p3_c3_g3_ct2)
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
    crate1 - caja
    crate2 - caja
    crate3 - caja
    comida - content
    medicina - content
    person1 - person
    person2 - person
    person3 - person
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
    (contenido-caja crate1 comida)
    (contenido-caja crate2 medicina)
    (contenido-caja crate3 medicina)
    (at person1 loc2)
    (at person2 loc3)
    (at person3 loc2)
    (person-needs person2 medicina)
    (person-needs person3 comida)
    (person-needs person3 medicina)
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
    (persona-libre person1)
    (persona-libre person2)
    (persona-libre person3)
    (transportador-libre carrier1)
    (transportador-libre carrier2)
	(= (fly-cost deposito loc1) 250)
	(= (fly-cost deposito loc2) 125)
	(= (fly-cost deposito loc3) 151)
	(= (fly-cost loc1 deposito) 250)
	(= (fly-cost loc1 loc2) 178)
	(= (fly-cost loc1 loc3) 156)
	(= (fly-cost loc2 deposito) 125)
	(= (fly-cost loc2 loc1) 178)
	(= (fly-cost loc2 loc3) 175)
	(= (fly-cost loc3 deposito) 151)
	(= (fly-cost loc3 loc1) 156)
	(= (fly-cost loc3 loc2) 175)
	(= (fly-cost deposito deposito) 999999)
	(= (fly-cost loc1 loc1) 999999)
	(= (fly-cost loc2 loc2) 999999)
	(= (fly-cost loc3 loc3) 999999)
(= (fly-cost deposito deposito) 999999)
  )

  (:goal (and
    (at dron1 deposito)
    (at dron2 deposito)
    (at dron3 deposito)
    (person-has person2 medicina)
    (person-has person3 comida)
    (person-has person3 medicina)
    (at carrier1 deposito)
    (at carrier2 deposito)
  ))

  (:metric minimize (total-time))
)
