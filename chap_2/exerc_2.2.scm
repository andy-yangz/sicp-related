(define (print-point p)
    (newline)
    (display "(")
    (display (x-point p))
    (display ",")
    (display (y-point p))
    (display ")"))

;point contructor and selector
(define (make-point x y) (cons x y))
(define (x-point p) (car p))
(define (y-point p) (cdr p))

;segment constructor and selector
(define (make-segment sp ep) (cons sp ep))
(define (start-segment seg) (car seg))
(define (end-segment seg) (cdr seg))

(define (midpoint-segment seg)
    (let ((p1 (start-segment seg)) 
          (p2 (end-segment seg)))
        (make-point (average (x-point p1) (x-point p2))
                    (average (y-point p1) (y-point p2)))))