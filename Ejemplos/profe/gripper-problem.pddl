(define (problem gripper_prob) (:domain gripper)
(:objects 
    ball1 ball2 ball3 ball4 - ball
    room1 room2 - room
    izq dcho - gripper
)

(:init
    ;todo: put the initial state's facts and numeric values here
    (at-ball room1 ball1)
    (at-ball room1 ball2)
    (at-ball room1 ball3)
    (at-ball room1 ball4)
    (at-robby room1)
    (free izq)
    (free dcho)
)

(:goal (and
    (at-ball room2 ball1)
    (at-ball room2 ball2)
    (at-ball room2 ball3)
    (at-ball room2 ball4)
    
    
    ;todo: put the goal condition here
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
