(load "exerc_1.42.scm")
(define (repeated f n)
    (if (= n 1)
        (lambda (x) (f x))
        (compose f 
                 (repeated f 
                           (- n 1)))))
