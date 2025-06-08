(define (problem problema1d1c1l)
  (:domain ejercicio1_strips)
  (:objects
    dron1 - dron
    caja1 caja2 - caja
    persona1 - person
    deposito location1 - location
    comida medicina - content
    n0 n1 n2 n3 n4 - num
  )
  (:init
    (at dron1 deposito)
    (at caja1 deposito)
    (at caja2 deposito)
    (at persona1 location1)
    (contenido-caja caja1 comida)
    (contenido-caja caja2 medicina)
    (person-needs persona1 comida)
    (person-needs persona1 medicina)
    (cantidad-cajas-cargadas dron1 n0)
    (siguiente dron1 n0 n1)
    (siguiente dron1 n1 n2)
    
  )
  (:goal
    (and
      (person-has persona1 comida)
      (person-has persona1 medicina)
    )
  )
)
