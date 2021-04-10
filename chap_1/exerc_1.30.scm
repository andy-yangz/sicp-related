(load "examp_1.3.1.scm")
(define (sum term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a)
                  (+ result (term a)))))
    (iter a 0))