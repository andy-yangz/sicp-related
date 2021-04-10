(load "../helper.scm")
(define (iterative-improve good-enough? improve)
    (define (iter guess)
            (if (good-enough? guess)
                guess
                (iter (improve guess))))
    (lambda (init-guess) (iter init-guess)))

; (define sqrt (iterative-improve good-enough? improve))
(define (sqrt x)
    (define (good-enough? guess)
        (< (abs (- (square guess) x)) 0.001))
    (define (improve guess)
        (average guess (/ x guess)))
    ((iterative-improve good-enough? improve) 1.0))

; (load "examp_1.3.3_2.scm")
(define (fixed-point f first-guess)
    (define (good-enough? guess)
        (let ((next (f guess)))
            (< (abs (- next guess)) tolerance)))
    ((iterative-improve good-enough? f) first-guess))
