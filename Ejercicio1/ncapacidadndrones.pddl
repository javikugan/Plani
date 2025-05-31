;Dominio STRIPS

(define (domain ejercicio1_strips)

    ; Requerimientos
    (:requirements :strips :typing)
    (:types
        object
        dron caja person - object
        location
        content
        num
    )   

    (:predicates
        (at ?o - object ?l - location)
        (en-dron ?c - caja ?d - dron)
        (contenido-caja ?b - caja ?content - content)
        (person-needs ?p - person ?content - content)
        (person-has ?p - person ?content - content)
        (cantidad-cajas-cargadas ?d - dron ?n - num)
        (siguiente ?d - dron ?n1 ?n2 - num)


    )
    ; Acciones
    (:action mover-drone
        :parameters (
            ?d - dron ?from - location ?to - location
        )
        :precondition (and 
            (at ?d ?from)
        )
        
        :effect (and 
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
            (siguiente ?d ?n1 ?n2) 
            )       
        :effect (and
            (not (at ?c ?l))
            (en-dron ?c ?d)
            (not (cantidad-cajas-cargadas ?d ?n1))
            (cantidad-cajas-cargadas ?d ?n2)    
        )
    )
    (:action descargar_dron
        :parameters (
            ?d - dron ?c - caja ?l - location ?n1 ?n2 - num
        )
        :precondition (and 
            (at ?d ?l)
            (en-dron ?c ?d)
            (cantidad-cajas-cargadas ?d ?n2)
            (siguiente ?d ?n1 ?n2)
        )       
        :effect (and
            (not (en-dron ?c ?d))
            (at ?c ?l)
            (not (cantidad-cajas-cargadas ?d ?n2))
            (cantidad-cajas-cargadas ?d ?n1)    
    ))
    (:action entregar   
        :parameters (
            ?p - person ?c - caja ?content ?l - location ?d - dron 
        )
        :precondition (and 
            (at ?p ?l)
            (at ?d ?l)
            (at ?c ?l)
            (contenido-caja ?c ?content)
            (person-needs ?p ?content)
        )       
        :effect (and
            (not (at ?c ?l))
            (person-has ?p ?content)
            (not (person-needs ?p ?content))
        )
    )
    

)