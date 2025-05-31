(define (problem gripper_prob_strips) (:domain gripper_strips)


(:objects
    room1 room2
    ball1 ball2 ball3 ball4
    left right
)

(:init
    ;todo: put the initial state's facts and numeric values here
    (ball ball1)
    (ball ball2)
    (ball ball3)
    (ball ball4)
    (gripper left)
    (gripper right)
    (room room1)
    (room room2)
    (at-ball room1 ball1)
    (at-ball room1 ball2)
    (at-ball room1 ball3)
    (at-ball room1 ball4)
    (at-robby room1)
    (free left)
    (free right)
)

(:goal (and
    (at-ball room2 ball1)
    (at-ball room2 ball2)
    (at-ball room2 ball3)
    (at-ball room2 ball4)
    (at-robby room1)
    
    
    ;todo: put the goal condition here
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
