(load "../helper.scm")
(load "examp_1.3.3_2.scm")
(define (average-damp f)
    (lambda (x) (average x (f x))))
(define (sqrt x)
    (fixed-point (average-damp (lambda (y) (/ x y)))
                 1.0))
(define (cube-root x)
    (fixed-point (average-damp (lambda (y) (/ x (square y))))
                 1.0))

;Newton's method
(define (deriv g)
    (lambda (x) (/ (- (g (+ x dx)) (g x)) dx)))
(define (cube x) (* x x x))
(define (newton-transform g)
    (lambda (x) (- x (/ (g x) ((deriv g) x)))))
(define (newtons-method g guess)
    (fixed-point (newton-transform g) guess))

(define (sqrt x)
    (newtons-method 
        (lambda (y) (- (square y) x)) 1.0))

;abstraction
(define (fixed-point-of-transform g transform guess)
    (fixed-point (transform g) guess))

(define (sqrt x)
    (fixed-point-of-transform (lambda (y) (/ x y))
                              average-damp
                              1.0))

(define (sqrt x)
    (fixed-point-of-transform (lambda (y) (- (square y) x))
                              newton-transform
                              1.0))
