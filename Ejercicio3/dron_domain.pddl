(define (domain drone-domain)
    ; Requerimientos
    (:requirements :strips :typing)
    (:types
        object
        dron caja person transportador - object  ; Corrección de jerarquía de tipos
        location
        content
        num
    )   

    (:predicates
        ;; ubicación de drones, cajas, personas y transportadores
        (at ?o - object ?l - location)

        ;; carga en dron
        (en-dron ?c - caja ?d - dron)
        (brazo-libre ?d - dron)

        ;; carga en transportador
        (cajas-en ?t - transportador ?n - num)
       (siguiente ?t - transportador ?n1 - num ?n2 - num)
        (carrying ?d - dron ?t - transportador)
        (transportador-libre ?t - transportador)


        ;; contenidos y necesidades
        (contenido-caja ?c - caja ?t - content)
        (en-transportador ?c - caja ?t - transportador)
        (person-needs ?p - person ?t - content)
        (person-has ?p - person ?t - content)
    )

    ; Acciones
    (:action mover-dron
        :parameters (?d - dron ?from - location ?to - location)
        :precondition (at ?d ?from)
        :effect (and
            (not (at ?d ?from))
            (at ?d ?to)
        )
    )

    (:action cargar_dron
        :parameters (?d - dron ?c - caja ?l - location ?n1 ?n2 - num)
        :precondition (and 
            (at ?d ?l)
            (at ?c ?l)
            (cantidad-cajas-cargadas ?d ?n1)
            (siguiente ?d ?n1 ?n2)
        )       
        :effect (and
            (not (at ?c ?l))
            (en-dron ?c ?d)
            (not (cantidad-cajas-cargadas ?d ?n1))
            (cantidad-cajas-cargadas ?d ?n2)    
        )
    )

    (:action entregar   
        :parameters (?p - person ?c - caja ?content - content ?l - location ?d - dron ?n1 ?n2 - num)
        :precondition (and 
            (at ?p ?l)
            (at ?d ?l)
            (en-dron ?c ?d)
            (cantidad-cajas-cargadas ?d ?n2)
            (contenido-caja ?c ?content)
            (person-needs ?p ?content)
            (siguiente ?d ?n1 ?n2)
        )       
        :effect (and
            (not (en-dron ?c ?d))
            (person-has ?p ?content)
            (not (person-needs ?p ?content))
            (not (cantidad-cajas-cargadas ?d ?n2))
            (cantidad-cajas-cargadas ?d ?n1) 
        )
    )

    (:action poner-caja-en-transportador
        :parameters (?d - dron ?t - transportador ?c - caja ?l - location ?n1 ?n2 ?n3 ?n4 - num)
        :precondition (and
            (at ?d ?l)
            (at ?t ?l)
            (en-dron ?c ?d)
            (transportador-libre ?t)
            (cantidad-cajas-cargadas ?d ?n2)
            (siguiente ?d ?n1 ?n2)
            (cajas-en ?t ?n3)
            (siguiente-t ?t ?n3 ?n4)
        )
        :effect (and
            (not (en-dron ?c ?d))
            (not (cajas-en ?t ?n3))
            (cajas-en ?t ?n4)
            (en-transportador ?c ?t )
        )
    )

    (:action coger-transportador
        :parameters (?d - dron ?t - transportador ?l - location ?n1 ?n2 - num)
        :precondition (and
            (at ?d ?l)
            (at ?t ?l)
            (transportador-libre ?t)
            (cantidad-cajas-cargadas ?d ?n1)
            (siguiente ?d ?n1 ?n2)
        )
        :effect (and
            (not (cantidad-cajas-cargadas ?d ?n1))
            (not (transportador-libre ?t))
            (cantidad-cajas-cargadas ?d ?n2)
            (carrying ?d ?t)
        )
    )
    (:action mover-transportador
        :parameters (?d - dron ?t - transportador ?from - location ?to - location)
        :precondition (and
            (at ?d ?from)
            (at ?t ?from)
            (carrying ?d ?t)
        )
        :effect (and
            (not (at ?d ?from))
            (at ?d ?to)
            (not (at ?t ?from))
            (at ?t ?to)
        )
    )

    (:action sacar-caja-del-transportador
        :parameters (?d - dron ?t - transportador ?c - caja ?l - location ?n1 ?n2 ?n3 ?n4 - num)
        :precondition (and
            (transportador-libre ?t)
            (at ?d ?l)
            (at ?t ?l)
            (en-transportador ?c ?t)
            (cajas-en ?t ?n2)
            (cantidad-cajas-cargadas ?d ?n3)
            (siguiente-t ?t ?n1 ?n2)
            (siguiente ?d ?n3 ?n4)

        )
        :effect (and
            (not (cajas-en ?t ?n2))
            (cajas-en ?t ?n1)
            (not (en-transportador ?c ?t))
            (not (cantidad-cajas-cargadas ?d ?n3))
            (cantidad-cajas-cargadas ?d ?n4)
            (en-dron ?c ?d)            
            )
    )
)
