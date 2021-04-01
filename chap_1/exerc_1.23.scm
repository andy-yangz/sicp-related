(load "exerc_1.22.scm")
(define (smallest-divisor n) (find-divisor n 2))
(define (find-divisor n test-divisor)
    (cond ((> (square test-divisor) n) n)
          ((divides? test-divisor n) test-divisor)
          (else (find-divisor n (next test-divisor)))))
(define (divides? a b) (= (remainder b a) 0))
(define (next divisor)
    (if (= divisor 2)
        3
        (+ divisor 2)))

; Only improve almost 1.5 times speed compare to exerc_1.22