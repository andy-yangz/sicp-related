; test for primality
; O(log(n))
; fermat test
; for prime, a^n % n == a
; try several times if pass try again, if not pass is not prime

(define (expmod base exp n)
    (cond ((= exp 0) 1)
          ((even? exp) 
           (remainder
            (square (expmod base (/ exp 2) n))
            n))
          (else 
           (remainder 
            (* base (expmod base (- exp 1) n))
            n))))

(define (fermat-test n)
    (define (try-it a)
        (= (expmod a n n) a))
    (try-it (+ 1 (random (- n 1))))) ;0 - n-2 -> 1 - n-1
    
(define (fast-prime? n times)
    (cond ((= times 0) true)
          ((fermat-test n) (fast-prime? n (- times 1)))
          (else false)))