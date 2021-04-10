(load "examp_1.3.1.scm")
(define (simpson-integral f a b n)
    (define h (/ (- b a) n))
    (define (y k)
        (f (+ a (* k h))))
    (define (factor k)
        (cond ((or (= k 0) (= k n)) 1)
              ((even? k) 2 )
              (else 4 )))
    (define (term k)
        (* (factor k)
            (y k)))
    (define (next k)
        (+ k 1))
    (if (not (even? n))
        (error "n cant be odd")
        (* (/ h 3)
           (sum term (exact->inexact 0) next n)))) ;exact->inexact so we can get non-frac result.

(define (test-func x)
    (+ x (* 2 x) (square x) (cube x)))
; (define (simp-term f a n h)
;     (define (inc-h k) (+ a (* k h)))
;     (define (term k)
;         (cond ((or (= k 0) (= k n)) (f (inc-h k)))
;               ((even? k) (* 2 (f (inc-h k))))
;               (else (* 4 (f (inc-h k))))))
;     term)
; (define (simpson-sum f a n h)
;     (sum (simp-term f a n h) 0 inc n))