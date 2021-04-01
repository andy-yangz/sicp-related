(define (fast-exp b n)
    (fast-exp-iter b n 1))
(define (fast-exp-iter b n a)
    (cond ((= n 0) a)
        ((even? n) (fast-exp-iter (square b) (/ n 2) a)) ;(b^{n/2})^2 = (b^2)^{n/2}
        (else (fast-exp-iter b (- n 1) (* a b)))))
(define (even? n)
    (= (remainder n 2) 0))