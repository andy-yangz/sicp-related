(define (identity x) x)
(define (inc x) (+ x 1))
(define (dec x) (- x 1))
(define (average a b)
    (/ (+ a b) 2))
(define dx 0.00001)
(define tolerance 0.00001)
(define (average-damp f)
    (lambda (x) (average x (f x))))

(define (gcd a b)
    (if (= b 0)
        a
        (gcd b
             (remainder a b))))