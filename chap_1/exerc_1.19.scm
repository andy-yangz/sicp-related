; we can use matrix multiplication
; T = [q+p, q]
;     [q  , p]
; So T^2 = [(q+p)^2+q^2, q(q+p)+qp] 
;          [q(q+p)+qp,   q^2+p^2 ]

(define (fib n)
    (fib-iter 1 0 0 1 n))
(define (fib-iter a b p q count)
    (cond ((= count 0) b)
          ((even? count)
           (fib-iter a
                     b
                     (+ (square q) (square p))
                     (+ (square q) (* 2 q p))
                     (halve count)))
          (else (fib-iter (+ (* b q) (* a q) (* a p))
                          (+ (* b p) (* a q))
                          p
                          q
                          (- count 1)))))
(define (even? n)
    (= (remainder n 2) 0))
(define (halve x)
    (/ x 2))
(define (square x)
    (* x x))