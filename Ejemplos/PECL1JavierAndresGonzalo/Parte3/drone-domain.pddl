(define (domain drone-strips)
  (:requirements 
      :strips 
      :typing 
      :durative-actions 
      :fluents
  )
  
  (:types 
      dron transportador caja persona localizacion contenido num
  )
  
  (:predicates 
      (transportador-en ?t - transportador ?l - localizacion)
      (persona-en ?p - persona ?l - localizacion)
      (caja-en ?c - caja ?l - localizacion)
      (caja-en-dron ?c - caja ?d - dron)
      (dron-en ?d - dron ?l - localizacion)
      
      (persona-necesita ?p - persona ?ctn - contenido)
      (persona-tiene ?p - persona ?ctn - contenido)
      
      (caja-contiene ?c - caja ?ctn - contenido)
      (caja-disponible ?c - caja)
      
      (transportador-contiene ?t - transportador ?c - caja)
      (limite-de ?t - transportador ?n - num)
      (siguiente ?n1 - num ?n2 - num)
      
      (dron-tiene ?d - dron ?c - caja)
      (dron-libre ?d - dron)
  )
  
  (:functions
      (fly-cost ?from ?to - localizacion)
  )
  
  ;; Acciones
  
  (:durative-action mover_dron
      :parameters (?d - dron ?from - localizacion ?to - localizacion)
      :duration (= ?duration (fly-cost ?from ?to))
      :condition (at start (dron-en ?d ?from))
      :effect (and 
                 (at start (not (dron-en ?d ?from)))
                 (at end (dron-en ?d ?to))
              )
  )
  
  (:durative-action coger-caja
      :parameters (?d - dron ?c - caja ?l - localizacion)
      :duration (= ?duration 1)
      :condition (at start (and
                   (caja-en ?c ?l)
                   (dron-en ?d ?l)
                   (caja-disponible ?c)
                   (dron-libre ?d)
                ))
      :effect (and 
                 (at start (and 
                    (not (dron-libre ?d))
                    (not (caja-en ?c ?l))
                 ))
                 (at end (and
                    (caja-en-dron ?c ?d)
                    (dron-tiene ?d ?c)
                 ))
              )
  )
  
  (:durative-action dejar-caja
      :parameters (?c - caja ?d - dron ?l - localizacion)
      :duration (= ?duration 1)
      :condition (at start (and
                   (dron-en ?d ?l)
                   (dron-tiene ?d ?c)
                   (caja-en-dron ?c ?d)
                ))
      :effect (and 
                 (at start (and 
                    (not (dron-tiene ?d ?c))
                    (not (caja-en-dron ?c ?d))
                 ))
                 (at end (and
                    (caja-en ?c ?l)
                    (dron-libre ?d)
                 ))
              )
  )
  
  (:durative-action entregar-caja
      :parameters (?c - caja ?d - dron ?l - localizacion ?ctn - contenido ?p - persona)
      :duration (= ?duration 1)
      :condition (at start (and
                   (dron-en ?d ?l)
                   (dron-tiene ?d ?c)
                   (persona-en ?p ?l)
                   (caja-disponible ?c)
                   (caja-en-dron ?c ?d)
                   (caja-contiene ?c ?ctn)
                ))
      :effect (and 
                 (at start (and
                    (not (caja-en-dron ?c ?d))
                    (not (dron-tiene ?d ?c))
                    (not (persona-necesita ?p ?ctn))
                 ))
                 (at end (and
                    (persona-tiene ?p ?ctn)
                    (dron-libre ?d)
                 ))
              )
  )
  
  (:durative-action poner-caja-en-transportador
      :parameters (?c - caja ?d - dron ?t - transportador ?l - localizacion ?nant - num ?nsig - num)
      :duration (= ?duration 1)
      :condition (at start (and
                   (dron-en ?d ?l)
                   (transportador-en ?t ?l)
                   (caja-en-dron ?c ?d)
                   (caja-disponible ?c)
                   (limite-de ?t ?nant)
                   (siguiente ?nant ?nsig)
                ))
      :effect (and 
                 (at start (and
                    (not (caja-en-dron ?c ?d))
                    (not (dron-tiene ?d ?c))
                    (not (limite-de ?t ?nant))
                 ))
                 (at end (and
                    (transportador-contiene ?t ?c)
                    (limite-de ?t ?nsig)
                    (dron-libre ?d)
                 ))
              )
  )
  
  (:durative-action coger-caja-de-transportador
      :parameters (?c - caja ?d - dron ?t - transportador ?l - localizacion ?nant - num ?nact - num)
      :duration (= ?duration 1)
      :condition (at start (and
                   (dron-en ?d ?l)
                   (transportador-en ?t ?l)
                   (transportador-contiene ?t ?c)
                   (dron-libre ?d)
                   (caja-disponible ?c)
                   (limite-de ?t ?nact)
                ))
      :effect (and 
                 (at start (and
                    (not (dron-libre ?d))
                    (not (limite-de ?t ?nact))
                    (not (transportador-contiene ?t ?c))
                 ))
                 (at end (and
                    (dron-tiene ?d ?c)
                    (caja-en-dron ?c ?d)
                    (limite-de ?t ?nant)
                 ))
              )
  )
  
  (:durative-action mover-transportador
      :parameters (?t - transportador ?d - dron ?from - localizacion ?to - localizacion)
      :duration (= ?duration (fly-cost ?from ?to))
      :condition (at start (and
                   (dron-en ?d ?from)
                   (transportador-en ?t ?from)
                   (dron-libre ?d)
                ))
      :effect (and 
                 (at start (and
                    (not (transportador-en ?t ?from))
                    (not (dron-en ?d ?from))
                 ))
                 (at end (and
                    (transportador-en ?t ?to)
                    (dron-en ?d ?to)
                 ))
              )
  )
)
