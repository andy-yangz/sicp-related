(load "exerc_2.7.scm")
(define (make-center-percent c perc)
    (let ((w (* c perc)))
        (make-interval (- c w) (+ c w))))
(define (center i)
    (/ (+ (lower-bound i) (upper-bound i)) 2))
(define (width i)
    (/ (- (upper-bound i) (lower-bound i)) 2))
(define (percent i)
    (/ (width i) (center i)))

;(define x (make-center-percent 6.8 0.1))
;(display-interval x) -> [6.12,7.4799999999999995]
;(percent x) -> 0.10