(define (cons x y)
    (lambda (m) (m x y)))
(define (car z)
    (z (lamdba (p q) p)))

;(car (cons x y))
;((lambda (m) (m x y)) (lambda (p q) p))
;((lambda (p q) p) x y)
;x

(define (cdr z)
    (z (lambda (p q) q)))