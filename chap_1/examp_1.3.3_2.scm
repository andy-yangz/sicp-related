(define tolerance 0.00001)
(define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
(define (fixed-point f first-guess)
    (define (try guess)
        (let ((next (f guess)))
            (if (close-enough? guess next)
                next
                (try next))))
    (try first-guess))

; (fixed-point (lambda (x) (+ 1 (/ 1 x))) 1.0)
; -> 1.6

;(fixed-point cos 1.0)
;0.739

; (fixed-point (lambda (y) (+ (sin y) (cos y))) 1.0)
;1.258