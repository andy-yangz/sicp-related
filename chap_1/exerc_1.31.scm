; recursive one
(define (product term a next b)
    (if (> a b)
        1
        (* (term a)
           (product term (next a) next b))))
; iterative one
(define (product term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a) (* result (term a)))))
    (iter a 1))

(define (factorial n)
    (product (lambda (x) x) 1 (lambda (x) (+ x 1)) n))

(define (pi-prod n)
    (define (term x)
        (/ (* (- x 1) (+ x 1)) 
           (square x)))
    (product term (exact->inexact 3) (lambda (x) (+ x 2)) n))