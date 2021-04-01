(load "examp_1.2.6_2.scm")
(load "exerc_1.22.scm")

(define (start-prime-test n  start-time)
    (if (fast-prime? n 3)
        (report-prime (- (runtime) start-time))))