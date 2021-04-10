(define (sum term a next b)
    (if (> a b)
        0
        (+ (term a)
           (sum term (next a) next b))))

(define (cube x)
    (* x x x))

(define (inc x) (+ x 1))
(define (sum-integers a b)
    (sum (lambda (x) x) a inc b))

(define (pi-sum a b)
    (define (pi-term x)
        (/ 1.0 (* x (+ x 2))))
    (sum pi-term a (lambda (x) (+ x 4)) b))

(define (integral f a b dx)
    (* (sum f (+ a (/ dx 2.0)) (lambda (x) (+ x dx)) b)
        dx))