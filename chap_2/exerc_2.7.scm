(load "examp_2.1.4.scm")
(define (make-interval x y) (cons x y))
(define (upper-bound interval) (max (car interval) (cdr interval)))
(define (lower-bound interval) (min (car interval) (cdr interval)))

(define (display-interval i) 
    (newline) 
    (display "[") 
    (display (lower-bound i)) 
    (display ",") 
    (display (upper-bound i)) 
    (display "]")) 

(define a (make-interval 2.3 3.5))