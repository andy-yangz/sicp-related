(define (cube x) (* x x x))
(define (p x)
    (- (* 3 x) (* 4 (cube x))))
(define (sine angle)
    (if (not (> (abs angle) 0.1))
        angle
        (p (sin (/ angle 3.0)))))

; run 5 times, ceil(log_{3}(12.15*10))

;Time: O(log angle)
;Space: O(log angle)