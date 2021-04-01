; Original, Linear
; (define (* a b)
;     (if (= b 0)
;         0
;         (+ a (* a (- b 1)))))

;logrithm
(define (* a b)
    (cond ((= a 1) b)
        ((even? a) (* (halve a) (double b)))
        (else (+ b (* (- a 1) b)))))

(define (even? n)
    (= (remainder n 2) 0))
(define (halve a)
    (/ a 2))
(define (double b)
    (+ b b))