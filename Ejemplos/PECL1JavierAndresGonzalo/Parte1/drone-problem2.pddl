(define (problem drone-prob1)
  (:domain drone-domain)

  (:objects
    drone1 - drone
    crate1 crate2 crate3 - crate
    person1 person2 - person
    food medicine - object
    depot loc1 loc2 - location
  )

  (:init
    (at drone1 depot)
    (arm1-free drone1)
    (arm2-free drone1)
    (at crate1 depot)
    (at crate2 depot)
    (at crate3 depot)
    (crate-content crate1 food)
    (crate-content crate2 medicine)
    (crate-content crate3 medicine)
    (at person1 loc1)
    (at person2 loc2)
    (person-needs person1 food)
    (person-needs person1 medicine)
    (person-needs person2 medicine)
  )

  (:goal
    (and
      (at drone1 depot)
      (person-has person1 food)
      (person-has person1 medicine)
      (person-has person2 medicine)
    )
  )
)
