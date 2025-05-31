(define (problem drone_problem_d1_r1_l5_p5_c5_g5_ct2)
  (:domain drone-strips)
  (:objects
    dron1 - dron
    deposito loc1 loc2 loc3 loc4 loc5 - localizacion
    caja1 caja2 caja3 caja4 caja5 - caja
    comida medicina - contenido
    persona1 persona2 persona3 persona4 persona5 - persona
    transportador1 - transportador
    n0 n1 n2 n3 n4 - num
  )
  
  (:init
    ;; Posiciones iniciales
    (dron-en dron1 deposito)
    (transportador-en transportador1 deposito)
    
    ;; Ubicación y disponibilidad de las cajas
    (caja-en caja1 deposito)
    (caja-en caja2 deposito)
    (caja-en caja3 deposito)
    (caja-en caja4 deposito)
    (caja-en caja5 deposito)
    (caja-disponible caja1)
    (caja-disponible caja2)
    (caja-disponible caja3)
    (caja-disponible caja4)
    (caja-disponible caja5)
    
    ;; Ubicación de las personas
    (persona-en persona1 loc1)
    (persona-en persona2 loc2)
    (persona-en persona3 loc3)
    (persona-en persona4 loc4)
    (persona-en persona5 loc5)
    
    ;; Contenido de las cajas
    (caja-contiene caja1 comida)
    (caja-contiene caja2 comida)
    (caja-contiene caja3 medicina)
    (caja-contiene caja4 medicina)
    (caja-contiene caja5 medicina)
    
    ;; Necesidades de las personas
    (persona-necesita persona1 medicina)
    (persona-necesita persona2 comida)
    (persona-necesita persona2 medicina)
    (persona-necesita persona3 comida)
    (persona-necesita persona4 comida)
    (persona-necesita persona5 medicina)
    
    ;; Secuencia de números para el transportador
    (siguiente n0 n1)
    (siguiente n1 n2)
    (siguiente n2 n3)
    (siguiente n3 n4)
    
    ;; Límite del transportador (inicialmente n0)
    (limite-de transportador1 n0)
    
    ;; El dron está libre
    (dron-libre dron1)
    
    ;; Costes de vuelo (valores de ejemplo)
    (= (fly-cost deposito loc1) 100)
    (= (fly-cost deposito loc2) 120)
    (= (fly-cost deposito loc3) 80)
    (= (fly-cost deposito loc4) 90)
    (= (fly-cost deposito loc5) 110)
    (= (fly-cost loc1 deposito) 100)
    (= (fly-cost loc2 deposito) 120)
    (= (fly-cost loc3 deposito) 80)
    (= (fly-cost loc4 deposito) 90)
    (= (fly-cost loc5 deposito) 110)
  )
  
  (:goal (and
    (persona-tiene persona1 medicina)
    (persona-tiene persona2 comida)
    (persona-tiene persona2 medicina)
    (persona-tiene persona3 comida)
    (persona-tiene persona4 comida)
    (persona-tiene persona5 medicina)
    (dron-en dron1 deposito)
  ))
)
