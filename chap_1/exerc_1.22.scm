(define (smallest-divisor n) (find-divisor n 2))
(define (find-divisor n test-divisor)
    (cond ((> (square test-divisor) n) n)
          ((divides? test-divisor n) test-divisor)
          (else (find-divisor n (+ test-divisor 1)))))
(define (divides? a b) (= (remainder b a) 0))

(define (prime? n)
    (= (smallest-divisor n) n))

(define (timed-prime-test n)
    (newline)
    (display n)
    (start-prime-test n (runtime)))
(define (start-prime-test n  start-time)
    (if (prime? n)
        (report-prime (- (runtime) start-time))))
(define (report-prime elapsed-time)
    (display " *** ")
    (display elapsed-time)
    (display "\n"))

(define (search-for-primes start count)
    (cond ((= count 0) (display "Finish."))
          ((even? start) (search-for-primes (+ start 1) count))
          (else (if (prime? start)
                (begin 
                    (display start)
                    (start-prime-test start (runtime))
                    (search-for-primes (+ start 1) (- count 1)))
                (search-for-primes (+ start 1) count)))))

; Cuz current machine is too powerful to display time under 100000000
; so I will test after this number 
;100000000000 -> .2699999999999996,.20999999999999996,.23000000000000043
;1000000000000 -> .690000000000000,.70999999999999,.689999999999
; 10000000000000 -> 2.1999999999999993, 2.490000000000002, 2.2200000000000024
; Almost √10(~3.16) times,