(define (problem drone_problem_d1_r0_l2_p2_c2_g2_ct2)
  (:domain drone-domain)
  (:objects
    dron1 - dron
    deposito - location
    loc1 - location
    loc2 - location
    crate1 - caja
    crate2 - caja
    comida - content
    medicina - content
    person1 - person
    person2 - person
    n0 - num
    n1 - num
    n2 - num
  )

  (:init
    (at dron1 deposito)
    (at crate1 loc2)
    (at crate2 loc1)
    (contenido-caja crate1 comida)
    (contenido-caja crate2 medicina)
    (at person1 loc2)
    (at person2 loc2)
    (person-needs person2 comida)
    (person-needs person2 medicina)
    (siguiente dron1 n0 n1)
    (siguiente dron1 n1 n2)
    (cantidad-cajas-cargadas dron1 n0)
    (= (fly-cost deposito deposito) 1)
    (= (fly-cost deposito loc1) 85)
    (= (fly-cost deposito loc2) 178)
    (= (fly-cost loc1 deposito) 85)
    (= (fly-cost loc1 loc1) 1)
    (= (fly-cost loc1 loc2) 106)
    (= (fly-cost loc2 deposito) 178)
    (= (fly-cost loc2 loc1) 106)
    (= (fly-cost loc2 loc2) 1)
  )

  (:goal (and
    (at dron1 deposito)
    (person-has person2 comida)
    (person-has person2 medicina)
  ))

)
