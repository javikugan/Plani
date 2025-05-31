;Header and description

(define (domain gripper)

;remove requirements that are not needed
(:requirements :strips :typing )

(:types ;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle
    gripper ball room - object
)

; un-comment following line if constants are needed
;(:constants )

(:predicates ;todo: define predicates here
    (at-robby ?r - room)
    (at-ball ?r - room ?b - ball)
    (free ?g - gripper)
    (carry-ball ?g - gripper ?b - ball)
    )

;define actions here
(:action move
    :parameters (
        ?from - room ?to - room 
    )
    :precondition (and 
        (at-robby ?from)
    )
    :effect (and 
        (not (at-robby ?from))
        (at-robby ?to)
    )
)

(:action pick-up
    :parameters (
        ?b - ball ?g - gripper ?r - room
    )
    :precondition (and 
        (at-ball ?r ?b)
        (at-robby ?r)
        (free ?g)
    )
    :effect (and 
        (not (free ?g))
        (carry-ball ?g ?b)
        (not (at-ball ?r ?b))
    )
)

(:action drop
    :parameters (
        ?g - gripper ?b - ball ?r - room
    )
    :precondition (and 
        (carry-ball ?g ?b)
        (at-robby ?r)
    )
    :effect (and 
        (not (carry-ball ?g ?b))
        (free ?g)
        (at-ball ?r ?b)
        
    )
)


)