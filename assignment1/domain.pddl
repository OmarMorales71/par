(define (domain minerob)
    (:requirements :strips :equality :adl)

  (:predicates
    (robot-location ?x)
    (minecar-location ?x1 ?x2)
    (minerals ?x)
    (depleted ?x)
    (empty ?x)
    (adjacent ?x1 ?x2)
  )

  ;; Action: Move
  (:action move
    :parameters (?from ?to)
    :precondition (and
      (robot-location ?from)
      ;; The robot can only move to adjacent areas.
      (adjacent ?from ?to)
      ;; The robot moves with the minecar when pushing, so it can pass through an area occupied by the minecar.
    )
    :effect (and
      ;; The robot moves from ?from to ?to.
      (not (robot-location ?from))
      (robot-location ?to)
    )
  )

  ;; Action: Collect minerals
  (:action collect
    :parameters (?a)
    :precondition (and
      (robot-location ?a)
      (minerals ?a)
    )
    :effect (and

      (not (minerals ?a))
      (depleted ?a)
    )
  )

  ;; Action: Push minecar
  ;; Robot moves with the minecar to its new position.
  (:action push
    :parameters (?m ?from ?to)
    :precondition (and
      ;; Robot and minecar must be in the same position.
      (robot-location ?from)
      (minecar-location ?m ?from)
      (adjacent ?from ?to)
      (empty ?to)  ;; Minecar can only be pushed to empty areas.
    )
    :effect (and
      (empty ?from)
      (not (empty ?to))
      ;; Robot follows the minecar
      (not (minecar-location ?m ?from))
      (minecar-location ?m ?to)
      (not (robot-location ?from))
      (robot-location ?to)
    )
  )
)