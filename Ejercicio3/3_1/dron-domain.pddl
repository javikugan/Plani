(define (domain drone-domain)
    (:requirements :strips :typing :action-costs)
    (:types
        object
        dron caja person transportador - object  ; Corrección de jerarquía de tipos
        location
        content
        num
    )   

    (:functions
        (total-cost)            ; Coste acumulado del plan
        (fly-cost ?from ?to - location)  ; Coste específico entre localizaciones
    )

    (:predicates
        ;; ubicación de drones, cajas, personas y transportadores
        (at ?o - object ?l - location)

        ;; carga en dron
        (en-dron ?c - caja ?d - dron)
        (brazo-libre ?d - dron)

        ;; carga en transportador
        (cajas-en ?t - transportador ?n - num)
        (siguiente-t ?t - transportador ?n1 ?n2 - num)
        (llevado-por ?d - dron ?t - transportador)


        ;; contenidos y necesidades
        (contenido-caja ?c - caja ?t - content)
        (en-transportador ?c - caja ?t - transportador)
        (person-needs ?p - person ?t - content)
        (person-has ?p - person ?t - content)

        (caja-libre ?c - caja)
        (persona-libre ?p - person)
        (transportador-libre ?t - transportador)
    )

    ; Acciones
    (:action mover-dron
        :parameters (?d - dron ?from - location ?to - location)
        :precondition (at ?d ?from)
        :effect (and
            (not (at ?d ?from))
            (at ?d ?to)
            (increase (total-cost) (fly-cost ?from ?to))
            )
    )

    (:action cargar_dron
        :parameters (?d - dron ?c - caja ?l - location)
        :precondition (and 
            (at ?d ?l)
            (at ?c ?l)
            (brazo-libre ?d)
            (caja-libre ?c)  ;; Caja libre para cargar
        )       
        :effect (and
            (not (at ?c ?l))
            (en-dron ?c ?d)
            (not (brazo-libre ?d))
            (not (caja-libre ?c))  ;; Caja ya no está libre
            (increase (total-cost) 1)  ; Incremento de coste al cargar
        )
    )

    (:action entregar   
        :parameters (?p - person ?c - caja ?content - content ?l - location ?d - dron)
        :precondition (and 
            (at ?p ?l)
            (at ?d ?l)
            (en-dron ?c ?d)
            (contenido-caja ?c ?content)
            (person-needs ?p ?content)
            (persona-libre ?p)  ;; Persona no ocupada

        )       
        :effect (and
            (not (persona-libre ?p))
            (not (en-dron ?c ?d))
            (person-has ?p ?content)
            (brazo-libre ?d)
            (not (person-needs ?p ?content))
            (persona-libre ?p)
            (increase (total-cost) 1)  ; Incremento de coste al entregar
        )
    )

    (:action poner-caja-en-transportador
        :parameters (?d - dron ?t - transportador ?c - caja ?l - location ?n1 ?n2 - num)
        :precondition (and
            (at ?d ?l)
            (at ?t ?l)
            (en-dron ?c ?d)
            (cajas-en ?t ?n1)
            (siguiente-t ?t ?n1 ?n2)
            (transportador-libre ?t)
        )
        :effect (and
            (not (en-dron ?c ?d))
            (not (cajas-en ?t ?n1))
            (cajas-en ?t ?n2)
            (en-transportador ?c ?t )
            (increase (total-cost) 1)  ; Incremento de coste al poner en transportador
        
            
        )
    )
    (:action coger-transportador
        :parameters (?d - dron ?t - transportador ?l - location)
        :precondition (and
            (at ?d ?l)
            (at ?t ?l)
            (brazo-libre ?d)
            (transportador-libre ?t)  ;; Transportador libre para coger
        )
        :effect (and
            (not (transportador-libre ?t))
            (not (brazo-libre ?d))
            (not (at ?t ?l))
            (llevado-por ?d ?t)
            (increase (total-cost) 1) ;
            
        )
    )
    (:action dejar-transportador
        :parameters (?d - dron ?t - transportador ?l - location)
        :precondition (and
            (at ?d ?l)
            (llevado-por ?d ?t)
            (not (transportador-libre ?t))  ;; Transportador no libre
        )
        :effect (and
            (brazo-libre ?d)
            (not(llevado-por ?d ?t))
            (at ?t ?l)
            (increase (total-cost) 1)
            (transportador-libre ?t)  ;; Ahora el transportador está libre
        )
    )

    (:action mover-transportador
        :parameters (?d - dron ?t - transportador ?from - location ?to - location)
        :precondition (and
            (at ?d ?from)
            (at ?t ?from)
            (llevado-por ?d ?t)
        )
        :effect (and
            (not (at ?d ?from))
            (at ?d ?to)
            (not (at ?t ?from))
            (at ?t ?to)
            (increase (total-cost) (fly-cost ?from ?to))
        )
    )

    (:action sacar-caja-del-transportador
        :parameters (?d - dron ?t - transportador ?c - caja ?l - location ?n1 ?n2 - num)
        :precondition (and
            (at ?t ?l)
            (at ?d ?l)
            (en-transportador ?c ?t)
            (cajas-en ?t ?n2)
            (siguiente-t ?t ?n1 ?n2)
            (brazo-libre ?d)
            (transportador-libre ?t)


        )
        :effect (and
            (not (cajas-en ?t ?n2))
            (cajas-en ?t ?n1)
            (not (en-transportador ?c ?t))
            (en-dron ?c ?d)            
            (not (brazo-libre ?d))
            (increase (total-cost) 1)  ; Incremento de coste al sacar del transportador
            )
    )
)
