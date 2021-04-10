(load "examp_1.2.6_1.scm")
(load "examp_1.2.5.scm")
(define (filtered-accumulate predicate combiner null-value term a next b)
    (if (> a b)
        null-value
        (combiner (if (predicate a)
                      (term a)
                      null-value) 
                  (filtered-accumulate predicate combiner null-value term (next a) next b))))

(define (sum-square-primes a b)
    (filtered-accumulate prime? + 0 square a (lambda (x) (+ x 1)) b))

(define (prod-prime-to-n n)
    (define (prime-to-n? x)
        (= (gcd x n) 1))
    (filtered-accumulate prime-to-n? * 1 (lambda (x) x) 1 (lambda (x) (+ x 1)) (- n 1)))