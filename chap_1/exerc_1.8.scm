;  Cube Root by Newtwon's method

(define (div-by-three x y)
    (/ (+ x y) 3))

(define (square x)
    (* x x))

(define (abs x)
    (if (< x 0)
        (- x)
        x))

(define (improve guess x)
    (div-by-three (* 2 guess) (/ x (square guess))))

(define (good-enough? guess last_guess)
    (< (abs (/ (- guess last_guess) guess)) 0.001))

(define (cube-root-iter guess x last_guess)
    (if (good-enough? guess last_guess)
        guess
        (cube-root-iter (improve guess x) x guess)))
(define (cube-root x)
    (cube-root-iter 1.0 x 0.0))

(cube-root 27)
; (sqrt (+ 100 37))
; (sqrt 0.00000000001) ;小数的话获得值不正确
; (sqrt 1000000000000000000000000000000000000000000000000000000000000) ;大数的话，求值过程太长