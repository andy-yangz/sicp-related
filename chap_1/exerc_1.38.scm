(load "exerc_1.37.scm")
;d function for e-2 expansion
; e-2 = 0.7182818
(define (d i)
    (if (= (remainder i 3) 2)
        (* (/ (+ i 1) 3) 2)
        1))

(cont-frac (lambda (i) 1)
           d
           10.0)
; get 0.71828 -> e - 2