;Dominio STRIPS

(define (domain drone-domain)
    ; Requerimientos
    (:requirements :strips :typing)
    (:types
        object
        dron caja person - object
        location
        content
        num
        transportador
    )   

    (:predicates
        
        ;; ubicación de drones, cajas, personas y transportadores
        (at       ?o - object      ?l - location)

        ;; carga en dron
        (en-dron               ?c - caja      ?d - dron)
        (cantidad-cajas-cargadas ?d - dron     ?n - num)
        (siguiente             ?d - dron      ?n1 - num    ?n2 - num)

        ;; carga en transportador
        (cajas-en               ?t - transportador ?n - num)
        (siguiente-t           ?t - transportador ?n1 - num    ?n2 - num)
        (capacidad-maxima      ?t - transportador ?n - num)

        ;; contenidos y necesidades
        (contenido-caja        ?c - caja      ?t - content)
        (person-needs          ?p - person    ?t - content)
        (person-has            ?p - person    ?t - content)

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
        :parameters (
            ?d - dron ?c - caja ?l - location ?n1 ?n2 - num
        )
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
        :parameters (
            ?p - person ?c - caja ?content - content ?l - location ?d - dron ?n1 ?n2 - num
        )
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
        ;; ------------------------------------------------------------------------
    ;; 4) Poner caja en transportador
    (:action poner-caja-en-transportador
        :parameters (?d - dron ?t - transportador ?c - caja ?l - location
                    ?n1 - num ?n2 - num)
        :precondition (and
        (at        ?d ?l)
        (at        ?t ?l)
        (at        ?c ?l)
        (cantidad-cajas-cargadas ?d ?n1)     ;; dron libre para cargar
        (siguiente               ?d ?n1 ?n2)
        (cajas-en    ?t ?n1)                 ;; estado actual del transportador
        (siguiente-t ?t ?n1 ?n2)
        (capacidad-maxima ?t ?n2)            ;; no sobrepasa su capacidad
        )
        :effect (and
        (not (at ?c ?l))
        (cajas-en ?t ?n2)
        (not (cajas-en ?t ?n1))
        )
    )

    ;; ------------------------------------------------------------------------
    ;; 5) Mover transportador (arrastrado por el dron)
    (:action mover-transportador
        :parameters (?d - dron ?t - transportador ?from - location ?to - location)
        :precondition (and
        (at ?d ?from)
        (at ?t ?from)
        )
        :effect (and
        (not (at ?d ?from))
        (at     ?d ?to)
        (not (at ?t ?from))
        (at     ?t ?to)
        )
    )

    ;; ------------------------------------------------------------------------
    ;; 6) Sacar caja del transportador
    (:action sacar-caja-del-transportador
        :parameters (?d - dron ?t - transportador ?c - caja ?l - location
                    ?n1 - num ?n2 - num)
        :precondition (and
        (at        ?d ?l)
        (at        ?t ?l)
        (cajas-en  ?t ?n2)
        (siguiente-t ?t ?n1 ?n2)
        )
        :effect (and
        (not (cajas-en ?t ?n2))
        (cajas-en     ?t ?n1)
        (at           ?c ?l)
        )
    )


)