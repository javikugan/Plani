(define (problem drone-prob1)
  (:domain drone-domain)

  (:objects
    drone1 - drone
    crate1 - crate
    person1 - person
    food medicine - object
    depot loc1 - location
  )

  (:init
    (at drone1 depot)
    (arm1-free drone1)
    (arm2-free drone1)
    (at crate1 depot)
    (crate-content crate1 food)
    (at person1 loc1)
    (person-needs person1 food)
  )

  (:goal
    (and
      (at drone1 depot)
      (person-has person1 food)
    )
  )
)
