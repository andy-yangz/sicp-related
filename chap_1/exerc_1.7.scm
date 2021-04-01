;  Square Root by Newtwon's method

(define (average x y)
    (/ (+ x y) 2))

(define (improve guess x)
    (average guess (/ x guess)))

(define (square x)
    (* x x))

(define (abs x)
    (if (< x 0)
        (- x)
        x))

(define (good-enough? guess last_guess)
    (< (abs (/ (- guess last_guess) guess)) 0.001))

(define (sqrt-iter guess x last_guess)
    (if (good-enough? guess last_guess)
        guess
        (sqrt-iter (improve guess x) x guess)))
(define (sqrt x)
    (sqrt-iter 1.0 x 0.0))

(sqrt 9)
; (sqrt (+ 100 37))
; (sqrt 0.00000000001) ;小数的话获得值不正确
; (sqrt 1000000000000000000000000000000000000000000000000000000000000) ;大数的话，求值过程太长