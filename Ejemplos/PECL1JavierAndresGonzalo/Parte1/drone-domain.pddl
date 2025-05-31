(define (domain drone-domain)


(:requirements :strips :typing )


(:types
    person crate food medicine location drone - object
)


(:predicates
    (at ?o - object ?l - location)
    (crate-content ?b - crate ?content - object)
    (person-needs ?p - person ?content - object)
    (person-has ?p - person ?content - object)
    (arm1-free ?d - drone)
    (arm1-load ?d - drone ?b - crate)
    (arm2-free ?d - drone)
    (arm2-load ?d - drone ?b - crate)
)


(:action move-drone
    :parameters (
        ?drone - drone ?origin - location ?destination - location 
    )
    :precondition (and 
        (at ?drone ?origin)
    )
    :effect (and 
        (not (at ?drone ?origin))
        (at ?drone ?destination)
    )
)

(:action grab-arm1
    :parameters (
        ?d - drone ?b - crate ?l - location
    )
    :precondition (and 
        (at ?d ?l)
        (at ?b ?l)
        (arm1-free ?d)
    )
    :effect (and 
        (not (arm1-free ?d))
        (arm1-load ?d ?b)
        (not (at ?b ?l))
    )
)

(:action grab-arm2
    :parameters (
        ?d - drone ?b - crate ?l - location
    )
    :precondition (and 
        (at ?d ?l)
        (at ?b ?l)
        (arm2-free ?d)
    )
    :effect (and 
        (not (arm2-free ?d))
        (arm2-load ?d ?b)
        (not (at ?b ?l))
    )
)

(:action deliver-arm1
    :parameters (
        ?d - drone ?p - person ?b - crate ?content - object ?l - location
    )
    :precondition (and 
        (arm1-load ?d ?b)
        (at ?d ?l)
        (at ?p ?l)
        (crate-content ?b ?content)
        (person-needs ?p ?content)
    )
    :effect (and 
        (not (arm1-load ?d ?b))
        (arm1-free ?d)
        (not (person-needs ?p ?content))
        (person-has ?p ?content)
    )
)

(:action deliver-arm2
    :parameters (
        ?d - drone ?p - person ?b - crate ?content - object ?l - location
    )
    :precondition (and 
        (arm2-load ?d ?b)
        (at ?d ?l)
        (at ?p ?l)
        (crate-content ?b ?content)
        (person-needs ?p ?content)
    )
    :effect (and 
        (not (arm2-load ?d ?b))
        (arm2-free ?d)
        (not (person-needs ?p ?content))
        (person-has ?p ?content)
    )
)


)
