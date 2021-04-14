(load "exerc_2.8.scm")
(load "../helper.scm")
(define (width interval)
    (/ (- (upper-bound interval)
          (lower-bound interval))
        2))

;(define c (add-interval a b))
;(width c) = (+ (width a) (width b))

