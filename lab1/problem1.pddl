(define (problem pb1)
    (:domain blocksworld)
    (:objects
        a b c d
    )
    (:init
        (on-table a)
        (on-table b)
        (on-table c)
        (clear a)
        (clear b)
        (on d c)
        (clear d)
        (arm-empty)
    )
    (:goal
        (and (on a b) (on b d) (clear a) (on-table d) (clear c) (on-table c))
    )
)