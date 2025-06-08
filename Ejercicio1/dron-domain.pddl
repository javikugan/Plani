;Dominio STRIPS

(define (domain drone-domain)
    ; Requerimientos
    (:requirements :strips :typing)
    (:types
        object
        dron caja person - object
        location
        content
    )   

    (:predicates
        (at ?o - object ?l - location)
        (holding-left  ?d - dron ?c - caja)   
        (holding-right ?d - dron ?c - caja)   
        (left-free     ?d - dron)             
        (right-free    ?d - dron)

        ;;cajas
        (contenido-caja ?b - caja ?content - content)
        (person-needs ?p - person ?content - content)
        (person-has ?p - person ?content - content)
        


    )
    ; Acciones
    (:action mover-drone
    :parameters (?d - dron ?from - location ?to - location)
    :precondition (at ?d ?from)
    :effect (and
        (not (at ?d ?from))
        (at ?d ?to)
    )
)

    (:action cargar_left
        :parameters (
            ?d - dron ?c - caja ?l - location 
        )
        :precondition (and 
            (at ?d ?l)
            (at ?c ?l)
            (left-free ?d)
            )       
        :effect (and
            (not (at ?c ?l))
            (holding-left  ?d ?c)
            (not (left-free ?d))   
        )
    )
    (:action cargar_right
        :parameters (
            ?d - dron ?c - caja ?l - location 
        )
        :precondition (and 
            (at ?d ?l)
            (at ?c ?l)
            (right-free ?d)
            )       
        :effect (and
            (not (at ?c ?l))
            (holding-right  ?d ?c)
            (not (right-free ?d))   
        )
    )
    (:action entregar-left
        :parameters (?p - person ?c - caja ?cnt - content ?l - location ?d - dron)
        :precondition (and
            (at ?p ?l)
            (at ?d ?l)
            (holding-left ?d ?c)
            (contenido-caja ?c ?cnt)
            (person-needs ?p ?cnt)
        )
        :effect (and
            ;; la pinza izquierda libera la caja
            (not (holding-left ?d ?c))
            (left-free ?d)

            ;; la persona recibe el contenido
            (person-has ?p ?cnt)
            (not (person-needs ?p ?cnt))
        )
    )

    (:action entregar-right
        :parameters (?p - person ?c - caja ?cnt - content ?l - location ?d - dron)
        :precondition (and
            (at ?p ?l)
            (at ?d ?l)
            (holding-right ?d ?c)
            (contenido-caja ?c ?cnt)
            (person-needs ?p ?cnt)
        )
        :effect (and
            (not (holding-right ?d ?c))
            (right-free ?d)
            (person-has ?p ?cnt)
            (not (person-needs ?p ?cnt))
        )
    )
)