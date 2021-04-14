(define (zero f) (lambda (x) x))
(define (add-1 n)
    (lambda (f) (lambda (x) (f ((n f) x)))))

; 1 = (add-1 zero)
; 展开
; 1. (add-1 zero)
; 2. ((lambda (n)
;       (lambda (f) 
;           (lambda (x) (f ((n f) x)))))
;    (lambda (f)
;       (lambda (x)
;           x))
;
; (lambda (f)
;     (lambda (x) (f ((lambda (f) 
;                         (lambda (x) x)) f) x)))))

; (lambda (f)
;     (lambda (x) (f x)))

(define (one f)
    (lambda (x) (f x)))

;2 = (add-1 one)
;((lambda (n) (lambda (f) lambda(x (f ((n f) x))))), 
;  (lambda (f) (lambda (x) (f x))))
;
;(lambda (f) (lambda (x) (f ((lambda(x) (f x)) x))))
;(lambda (f) (lambda (x) (f (f x))))

(define (two f)
    (lambda (x) (f (f x))))

(define (+ n1 n2)
    (lambda (f) (lambda (x) ((n1 f) ((n2 f) x)))))

;(+ two one)