(define (domain drone-domain)
  (:requirements 
    :strips 
    :typing 
    :durative-actions 
    :fluents            ; funciones numéricas
    :duration-inequalities
  )
  (:types
    object
      dron caja person transportador - object
    location
    content
    num
  )

  (:functions
    (fly-cost ?from ?to - location)
  )

  (:predicates
    (at             ?o - object           ?l - location)
    (en-dron        ?c - caja             ?d - dron)
    (dron-libre     ?d - dron)
    (brazo-libre    ?d - dron)
    (cajas-en       ?t - transportador    ?n - num)
    (siguiente-t    ?t - transportador    ?n1 ?n2 - num)
    (llevado-por    ?d - dron             ?t - transportador)
    (contenido-caja ?c - caja             ?t - content)
    (en-transportador ?c - caja           ?t - transportador)
    (person-needs   ?p - person           ?t - content)
    (person-has     ?p - person           ?t - content)
    (caja-libre     ?c - caja)
    (persona-libre  ?p - person)
    (transportador-libre ?t - transportador)
  )

  ;; Acción: cargar-dron
  (:durative-action cargar-dron
    :parameters (?d - dron ?c - caja ?l - location)
    :duration (= ?duration 1)
    :condition (and
      (at start (and
        (dron-libre ?d)
        (at ?d ?l)
        (at ?c ?l)
        (brazo-libre ?d)
        (caja-libre ?c)
      ))
      (over all (and
        (at ?d ?l)
        (at ?c ?l)
      ))
    )
    :effect (and
      (at start (and
        (not (dron-libre ?d))
        (not (at ?c ?l))
        (not (caja-libre ?c))
        (not (brazo-libre ?d))
      ))
      (at end (and
        (en-dron ?c ?d)
        (dron-libre ?d)
      ))
    )
  )
  ;; Acción: mover-dron
  (:durative-action mover-dron
    :parameters (?d - dron ?from - location ?to - location)
    :duration (= ?duration (fly-cost ?from ?to))
    :condition (and
      (at start (and
        (at ?d ?from)
        (dron-libre ?d)
      ))
    )
    :effect (and
      (at start (and
        (not (dron-libre ?d))
        (not (at ?d ?from))
      ))
      (at end (and
        (at ?d ?to)
        (dron-libre ?d)
      ))
    )
  )


  ;; Acción: mover-transportador
  (:durative-action mover-transportador
    :parameters (?d - dron ?t - transportador ?from - location ?to - location)
    :duration (= ?duration (fly-cost ?from ?to))
    :condition (and
      (at start (and
        (dron-libre ?d)
        (at ?d ?from)
        (llevado-por ?d ?t)
      ))
      (over all (and
        (llevado-por ?d ?t)
      ))
    )
    :effect (and
      (at start (and
        (not (dron-libre ?d))
        (not (at ?d ?from))
        
      ))
      (at end (and
        (at ?d ?to)
        (dron-libre ?d)
      ))
    )
  )

  ;; Acción: descargar-dron
  (:durative-action descargar-dron
    :parameters (?d - dron ?c - caja ?l - location)
    :duration (= ?duration 1)
    :condition (and
      (at start (and
        (en-dron ?c ?d)
        (dron-libre ?d)
      ))
      (over all (and
        (at ?d ?l)
      ))
    )
    :effect (and
      (at start (and
        (not (dron-libre ?d))
      ))
      (at end (and
        (at ?c ?l)
        (brazo-libre ?d)
        (caja-libre ?c)
        (not (en-dron ?c ?d))
        (dron-libre ?d)
      ))
    )
  )

  ;; Acción: entregar
  (:durative-action entregar
    :parameters (?p - person ?c - caja ?t - content ?l - location ?d - dron)
    :duration (= ?duration 1)
    :condition (and
      (at start (and
        (dron-libre ?d)
        (en-dron ?c ?d)
        (at ?d ?l)
        (at ?p ?l)
        (persona-libre  ?p)
      ))
      (over all (and
        (contenido-caja ?c ?t)
      ))
    )
    :effect (and
      (at start (and
        (not (persona-libre  ?p))
        (not (dron-libre ?d))
      ))
      (at end (and
        (person-has ?p ?t)
        (not (person-needs ?p ?t))
        (brazo-libre ?d)
        (not (en-dron ?c ?d))
        (dron-libre ?d)
        (persona-libre  ?p)
      ))
    )
  )

  ;; Acción: poner-caja-en-transportador
  (:durative-action poner-caja-en-transportador
    :parameters (?d - dron ?t - transportador ?c - caja ?l - location ?n1 ?n2 - num)
    :duration (= ?duration 1)
    :condition (and
      (at start (and
        (transportador-libre ?t)
        (siguiente-t ?t ?n1 ?n2)
        (dron-libre ?d)
        (at ?d ?l)
        (at ?t ?l)
        (en-dron ?c ?d)
        (cajas-en ?t ?n1)
      ))
      (over all (and
        (at ?d ?l)
        (at ?t ?l)
      ))
    )
    :effect (and
      (at start (and
        (not (dron-libre ?d))
        (not (transportador-libre ?t))
        (not (en-dron ?c ?d))

      ))
      (at end (and
        (cajas-en ?t ?n2)
        (not (cajas-en ?t ?n1))
        (en-transportador ?c ?t)
        (transportador-libre ?t)
        (brazo-libre ?d)
        (dron-libre ?d)
      ))
    )
  )

  ;; Acción: coger-transportador
  (:durative-action coger-transportador
    :parameters (?d - dron ?t - transportador ?l - location)
    :duration (= ?duration 1)
    :condition (and
      (at start (and
        (transportador-libre ?t)
        (dron-libre ?d)
        (at ?d ?l)
        (at ?t ?l)
        (brazo-libre ?d)
      ))
      (over all (and
        (at ?d ?l)
      ))
    )
    :effect (and
      (at start (and
        (not (at ?t  ?l))
        (not (dron-libre ?d))
        (not (transportador-libre ?t))
        (not (brazo-libre ?d))
      ))
      (at end (and
        (llevado-por ?d ?t)
        (dron-libre ?d)
      ))
    )
  )

  ;; Acción: dejar-transportador
  (:durative-action dejar-transportador
    :parameters (?d - dron ?t - transportador ?l - location)
    :duration (= ?duration 1)
    :condition (and
      (at start (and
        (dron-libre ?d)
        (at ?d ?l)
        (llevado-por ?d ?t)
      ))
      (over all (and
        (at ?d ?l)
      ))
    )
    :effect (and
      (at start (and
        (not (dron-libre ?d))
        (not (llevado-por ?d ?t))
      ))
      (at end (and
        (at ?t ?l)
        (transportador-libre ?t)
        (brazo-libre ?d)
        (dron-libre ?d)
      ))
    )
  )

  (:durative-action sacar-caja-del-transportador
    :parameters (?d - dron ?t - transportador ?c - caja ?l - location ?n1 ?n2 - num)
    :duration (= ?duration 1)
    :condition (and
      (at start (and
        (dron-libre ?d)
        (at ?t ?l)
        (at ?d ?l)
        (en-transportador ?c ?t)
        (cajas-en ?t ?n2)
        (siguiente-t ?t ?n1 ?n2)
        (brazo-libre ?d)
        (transportador-libre ?t)
      ))
      (over all (and
        (at ?d ?l)
        (at ?t ?l)
      ))
    )
    :effect (and
      (at start (and
        (not (dron-libre ?d))
        (not (transportador-libre ?t))
        (not (cajas-en ?t ?n2))
      ))
      (at end (and
        (cajas-en ?t ?n1)
        (not (en-transportador ?c ?t))
        (en-dron ?c ?d)
        (not (brazo-libre ?d))
        (dron-libre ?d)
        (transportador-libre ?t)
      ))
    )
  )

)

