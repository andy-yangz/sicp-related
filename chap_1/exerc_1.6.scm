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

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
    (new-if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x))) ; 因为new-if会两个条件都执行，而sqrt-iter又会回来调用new-if，所以导致了不断循环调用，最后递归到极限

(define (sqrt x)
    (sqrt-iter 1.0 x))


(sqrt 9)