(define (domain wumpus-world)
    (:requirements :strips :equality :adl)
    (:predicates
        (adjacent ?r1 ?r2)
        (agent-at ?r)
        (wumpus-at ?r)
        (pit-at ?r)
        (gold-at ?r)
        (has-gold)
        (has-arrow)
        (wumpus-dead)
        (safe ?r)

    )
    (:action move
        :parameters (?from ?to)
        :precondition (and
        (agent-at ?from)
        (adjacent ?from ?to)
        (safe ?to)
        )
        :effect (and
        (not (agent-at ?from))
        (agent-at ?to)
        )
    )
    (:action grab
        :parameters (?r)
        :precondition (and
        (agent-at ?r)
        (gold-at ?r)
        )
        :effect (and
        (has-gold)
        (not (gold-at ?r))
        )
    )
    (:action shoot
      :parameters (?from ?to)
      :precondition (and
        (agent-at ?from)
        (adjacent ?from ?to)
        (wumpus-at ?to)
        (has-arrow)
      )
      :effect (and
        (wumpus-dead)
        (not (wumpus-at ?to))
        (not (has-arrow))
        (safe ?to)
      )
    )
)