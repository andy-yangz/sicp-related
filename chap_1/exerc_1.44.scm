(load "../helper.scm")
(load "exerc_1.43.scm")
(define (smooth f)
    (lambda (x) (/ (+ (f (- x dx)) (f x) (f (+ x dx))) 3)))

(define (n-fold-smooth f n)
    (let ((n-times-smooth (repeated smooth n)))
        (n-times-smooth f)))
