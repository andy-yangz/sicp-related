; tanx
; Ni |- x, if i==1
;    |- x^2, else
; Di = 2i-1
(load "exerc_1.37.scm")
(define (tan-cf x k)
    (define (n i)
        (if (= i 1)
            x
            (- (square x))))
    (define (d i)
        (- (* 2 i) 1))
    (cont-frac n d k))