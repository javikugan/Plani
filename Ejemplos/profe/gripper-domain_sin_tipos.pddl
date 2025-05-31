;Header and description

(define (domain gripper_strips)

;remove requirements that are not needed
(:requirements :strips)

; un-comment following line if constants are needed
;(:constants )

(:predicates ;todo: define predicates here
    (gripper ?g)
    (room ?r)
    (ball ?b)
    (at-robby ?r)
    (at-ball ?r ?b)
    (free ?g)
    (carry-ball ?g ?b)
    )

;define actions here
(:action move
    :parameters (
        ?from ?to
    )
    :precondition (and 
        (room ?from)
        (room ?to)
        (at-robby ?from)
    )
    :effect (and 
        (not (at-robby ?from))
        (at-robby ?to)
    )
)

(:action pick-up
    :parameters (
        ?b ?g ?r
    )
    :precondition (and 
        (ball ?b)
        (gripper ?g)
        (room ?r)
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
        ?g ?b ?r
    )
    :precondition (and 
        (gripper ?g)
        (room ?r)
        (ball ?b)
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