; test for primality
; O(√n)
; if there is no interge(>1) smaller than √n can be divided by n
; n is prime number

(define (smallest-divisor n) (find-divisor n 2))
(define (find-divisor n test-divisor)
    (cond ((> (square test-divisor) n) n)
          ((divides? test-divisor n) test-divisor)
          (else (find-divisor n (+ test-divisor 1)))))
(define (divides? a b) (= (remainder b a) 0))

(define (prime? n)
    (= (smallest-divisor n) n))


