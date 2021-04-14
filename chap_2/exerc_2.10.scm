(load "exerc_2.7.scm")
(define (div-interval x y)
    (if (<= (* (lower-bound y) (upper-bound y)) 0)
        (error "Division Error (interval span 0)")
        (mul-interval x (make-interval (/ 1.0 (upper-bound y))
                                       (/ 1.0 (lower-bound y))))))

(define span-0 (make-interval -1 1))
(define i (make-interval 2 7)) 
(define j (make-interval 8 3))
(div-interval i j)
(div-interval i span-0)