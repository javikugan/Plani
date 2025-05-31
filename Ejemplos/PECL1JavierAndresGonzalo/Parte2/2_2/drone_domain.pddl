(define (domain dron-strips)
(:requirements 
    :strips :typing :action-costs
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
    (total-cost)
    (fly-cost ?from ?to - localizacion)
)

(:action mover_dron
    :parameters (
        ?d - dron
        ?from - localizacion
        ?to - localizacion
    )
    :precondition (and 
        (dron-en ?d ?from)
    )
    :effect (and 
        (not (dron-en ?d ?from))
        (dron-en ?d ?to)
        (increase (total-cost) (fly-cost ?from ?to))
    )
)

(:action coger-caja
    :parameters (
        ?d - dron
        ?c - caja
        ?l - localizacion        
    )
    :precondition (and 
        (caja-en ?c ?l)
        (dron-en ?d ?l)
        (caja-disponible ?c)
        (dron-libre ?d)
    )
    :effect (and 
        (not (dron-libre ?d))
        (not (caja-en ?c ?l))
        (caja-en-dron ?c ?d)
        (dron-tiene ?d ?c)
        (increase (total-cost) 1)
    )
)

(:action dejar-caja
    :parameters (
        ?c - caja
        ?d - dron
        ?l - localizacion
    )
    :precondition (and 
        (dron-en ?d ?l)
        (dron-tiene ?d ?c)
        (caja-en-dron ?c ?d)
    )
    :effect (and 
        (not (dron-tiene ?d ?c))
        (not (caja-en-dron ?c ?d))
        (caja-en ?c ?l)
        (dron-libre ?d)
        (increase (total-cost) 1)
    )
)

(:action entregar-caja
    :parameters (
        ?c - caja
        ?d - dron
        ?l - localizacion
        ?ctn - contenido
        ?p - persona
    )
    :precondition (and 
        (dron-en ?d ?l)
        (dron-tiene ?d ?c)
        (persona-en ?p ?l)
        (caja-disponible ?c)
        (caja-en-dron ?c ?d)
        (caja-contiene ?c ?ctn)
    )
    :effect (and 
        (not (caja-en-dron ?c ?d))
        (not (dron-tiene ?d ?c))
        (not (persona-necesita ?p ?ctn))
        (persona-tiene ?p ?ctn)
        (dron-libre ?d)
        (increase (total-cost) 1)
    )
)

(:action poner-caja-en-transportador
    :parameters (
        ?c - caja
        ?d - dron
        ?t - transportador
        ?l - localizacion
        ?nant - num
        ?nsig - num
    )
    :precondition (and 
        (dron-en ?d ?l)
        (transportador-en ?t ?l)
        (caja-en-dron ?c ?d)
        (caja-disponible ?c)
        (limite-de ?t ?nant)
        (siguiente ?nant ?nsig)
    )
    :effect (and 
        (not (caja-en-dron ?c ?d))
        (not (dron-tiene ?d ?c))
        (not (limite-de ?t ?nant))
        (transportador-contiene ?t ?c)
        (limite-de ?t ?nsig)
        (dron-libre ?d)
        (increase (total-cost) 1)
    )
)

(:action coger-caja-de-transportador
    :parameters (
        ?c - caja
        ?d - dron
        ?t - transportador
        ?l - localizacion
        ?nant - num
        ?nact - num
    )
    :precondition (and 
        (dron-en ?d ?l)
        (transportador-en ?t ?l)
        (transportador-contiene ?t ?c)
        (dron-libre ?d)
        (caja-disponible ?c)
        (limite-de ?t ?nact)
    )
    :effect (and 
        (not (dron-libre ?d))
        (not (limite-de ?t ?nact))
        (not (transportador-contiene ?t ?c))
        (dron-tiene ?d ?c)
        (caja-en-dron ?c ?d)
        (limite-de ?t ?nant)
        (increase (total-cost) 1)
    )
)

(:action mover-transportador
    :parameters (
        ?t - transportador
        ?d - dron
        ?to - localizacion
        ?from - localizacion
    )
    :precondition (and 
        (dron-en ?d ?from)
        (transportador-en ?t ?from)
        (dron-libre ?d)
    )
    :effect (and 
        (not (transportador-en ?t ?from))
        (not (dron-en ?d ?from))
        (transportador-en ?t ?to)
        (dron-en ?d ?to)
        (increase (total-cost) (fly-cost ?from ?to))
    )

))