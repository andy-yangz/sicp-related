; test for primality
; O(log(n))
; fermat test
; for prime, a^n % n == a
; try several times if pass try again, if not pass is not prime
; Add Rabin-miller test
(define (expmod base exp n)
    (cond ((= exp 0) 1)
          ((nontrivial-square-root base n)
            0)
          ((even? exp)
           (remainder
            (square (expmod base (/ exp 2) n))
            n))
          (else 
           (remainder 
            (* base (expmod base (- exp 1) n))
            n))))
(define (nontrivial-square-root base n) 
    (and (not (= base 1))
         (not (= base (- n 1)))
         (= (remainder (square base) n) 1)))

(define (miller-rabin-test n)
    (= (expmod (non-zero-random n) (- n 1) n)
       1)) ;0 - n-2 -> 1 - n-1
(define (non-zero-random n)
    (+ (random (- n 1)) 1))
(define (fast-prime? n times)
    (cond ((= times 0) true)
          ((miller-rabin-test n) (fast-prime? n (- times 1)))
          (else false)))

(define (fast-prime-test? n)
    (let ((times (ceiling (/ n 2))))
        (fast-prime? n times)))