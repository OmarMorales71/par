(define (problem dynamic2)
    (:domain lunarlockoutdynamic)
    (:objects
        POS1_1 POS1_2 POS1_3 POS1_4 POS1_5 POS2_1 POS2_2 POS2_3 POS2_4
        POS2_5 POS3_1 POS3_2 POS3_3 POS3_4 POS3_5 POS4_1 POS4_2 POS4_3 POS4_4
        POS4_5 POS5_1 POS5_2 POS5_3 POS5_4 POS5_5 BORDER_LEFT BORDER_RIGHT BORDER_TOP BORDER_BOTTOM - position
        red orange purple green yellow - spacecraft
    )
    (:init
        (just_left_of BORDER_LEFT POS1_1)(just_left_of POS1_1 POS2_1)(just_left_of POS2_1 POS3_1)(just_left_of POS3_1 POS4_1)(just_left_of POS4_1 POS5_1)(just_left_of POS5_1 BORDER_RIGHT)
        (just_left_of BORDER_LEFT POS1_2)(just_left_of POS1_2 POS2_2)(just_left_of POS2_2 POS3_2)(just_left_of POS3_2 POS4_2)(just_left_of POS4_2 POS5_2)(just_left_of POS5_2 BORDER_RIGHT)
        (just_left_of BORDER_LEFT POS1_3)(just_left_of POS1_3 POS2_3)(just_left_of POS2_3 POS3_3)(just_left_of POS3_3 POS4_3)(just_left_of POS4_3 POS5_3)(just_left_of POS5_3 BORDER_RIGHT)
        (just_left_of BORDER_LEFT POS1_4)(just_left_of POS1_4 POS2_4)(just_left_of POS2_4 POS3_4)(just_left_of POS3_4 POS4_4)(just_left_of POS4_4 POS5_4)(just_left_of POS5_4 BORDER_RIGHT)
        (just_left_of BORDER_LEFT POS1_5)(just_left_of POS1_5 POS2_5)(just_left_of POS2_5 POS3_5)(just_left_of POS3_5 POS4_5)(just_left_of POS4_5 POS5_5)(just_left_of POS5_5 BORDER_RIGHT)

        (just_above_of BORDER_TOP POS1_1)(just_above_of POS1_1 POS1_2)(just_above_of POS1_2 POS1_3)(just_above_of POS1_3 POS1_4)(just_above_of POS1_4 POS1_5)(just_above_of POS1_5 BORDER_BOTTOM)
        (just_above_of BORDER_TOP POS2_1)(just_above_of POS2_1 POS2_2)(just_above_of POS2_2 POS2_3)(just_above_of POS2_3 POS2_4)(just_above_of POS2_4 POS2_5)(just_above_of POS2_5 BORDER_BOTTOM)
        (just_above_of BORDER_TOP POS3_1)(just_above_of POS3_1 POS3_2)(just_above_of POS3_2 POS3_3)(just_above_of POS3_3 POS3_4)(just_above_of POS3_4 POS3_5)(just_above_of POS3_5 BORDER_BOTTOM)
        (just_above_of BORDER_TOP POS4_1)(just_above_of POS4_1 POS4_2)(just_above_of POS4_2 POS4_3)(just_above_of POS4_3 POS4_4)(just_above_of POS4_4 POS4_5)(just_above_of POS4_5 BORDER_BOTTOM)
        (just_above_of BORDER_TOP POS5_1)(just_above_of POS5_1 POS5_2)(just_above_of POS5_2 POS5_3)(just_above_of POS5_3 POS5_4)(just_above_of POS5_4 POS5_5)(just_above_of POS5_5 BORDER_BOTTOM)

        (at red POS1_1)
        (at purple POS2_2)
        (at green POS4_4)
        (at orange POS2_5)
        (at yellow POS4_1)
        (empty POS2_1)(empty POS3_1)(empty POS5_1)
        (empty POS1_2)(empty POS3_2)(empty POS4_2)(empty POS5_2)
        (empty POS1_3)(empty POS3_3)(empty POS4_3)(empty POS5_3)(empty POS2_3)
        (empty POS1_4)(empty POS2_4)(empty POS3_4)(empty POS5_4)
        (empty POS1_5)(empty POS5_5)(empty POS3_5)(empty POS4_5)
        (static)
        (= (moves) 0)

    )

    (:goal
        (and
        (at red POS3_3)
        (static))
    )

    (:metric
        minimize (moves)
    )
)