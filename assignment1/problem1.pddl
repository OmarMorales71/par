(define (problem minerob-example-1)
  (:domain minerob)

  (:objects
    a1 a2 a3 a4 a5 a6 a7 a8 a9 robot mine_car_A mine_car_B mine_car_C
  )

  (:init
    ;; Adjacencies (horizontal and vertical)
    (adjacent a1 a2) (adjacent a2 a1)
    (adjacent a1 a4) (adjacent a4 a1)
    (adjacent a2 a3) (adjacent a3 a2)
    (adjacent a2 a5) (adjacent a5 a2)
    (adjacent a3 a6) (adjacent a6 a3)
    (adjacent a4 a5) (adjacent a5 a4)
    (adjacent a4 a7) (adjacent a7 a4)
    (adjacent a5 a6) (adjacent a6 a5)
    (adjacent a5 a8) (adjacent a8 a5)
    (adjacent a6 a9) (adjacent a9 a6)
    (adjacent a7 a8) (adjacent a8 a7)
    (adjacent a8 a9) (adjacent a9 a8)

    ;; Initial positions
    (robot-location a7)
    (minecar-location mine_car_A a1)
    (minecar-location mine_car_B a6)
    (minecar-location mine_car_C a9)

    ;; This example does not have minerals
    (depleted a1) (depleted a2) (depleted a3) (depleted a4) (depleted a5) 
    (depleted a6) (depleted a7) (depleted a8) (depleted a9)
    
    ;; empty areas (no minecar)
    (empty a2) (empty a3) (empty a4)
    (empty a5) (empty a7) (empty a8) 
  )

  (:goal
    (and
      ;; All areas will be empty of minerals.
      (depleted a1) (depleted a2) (depleted a3) 
      (depleted a4) (depleted a5) (depleted a6) 
      (depleted a7) (depleted a8) (depleted a9)
      ;; Final position of the mine cars.
      (minecar-location mine_car_A a2)
      (minecar-location mine_car_B a3)
      (minecar-location mine_car_C a7)
       ;; Final position of the robot.
      (robot-location a4)
    )
  )
)
