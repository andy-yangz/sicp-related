; Iteratively multiply

(define (* a b)
    (*-iter a b 0))
(define (*-iter a b c)
    (cond ((= a 1) (+ b c))
          ((even? a) (*-iter (halve a) (double b) c))
          (else (*-iter (- a 1) b (+ c b)))))
(define (even? n)
    (= (remainder n 2) 0))
(define (halve a)
    (/ a 2))
(define (double b)
    (+ b b))