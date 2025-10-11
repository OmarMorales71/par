(define (problem wumpus-problem)
  (:domain wumpus-world)

  (:objects
    r11 r12 r13 r21 r22 r23
  )

  (:init
    (adjacent r11 r21)
    (adjacent r21 r11)
    (adjacent r11 r12)
    (adjacent r12 r11)
    (adjacent r21 r22)
    (adjacent r22 r21)
    (adjacent r22 r12)
    (adjacent r12 r22)
    (adjacent r22 r23)
    (adjacent r23 r22)
    (adjacent r12 r13)
    (adjacent r13 r12)
    (adjacent r23 r13)
    (adjacent r13 r23)

    (agent-at r11)
    (wumpus-at r23)
    (pit-at r12)
    (gold-at r13)
    (has-arrow)
    (safe r11)
    (safe r13)
    (safe r21)
    (safe r22)
  )

  (:goal
    (and
      (agent-at r11)
      (has-gold)
    )
  )
)
