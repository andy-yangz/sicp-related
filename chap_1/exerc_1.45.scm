(load "exerc_1.43.scm") ;Repeat
(load "examp_1.3.3_2.scm")

(define (sqrt x)
    (fixed-point (average-damp (lambda (y) (/ x y)))
                 1.0))

(define (cube-root x)
    (fixed-point (average-damp (lambda (y) (/ x (square y))))
                 1.0))

(define (nth_root x n)
    (define (damp_times n)
        (define (iter n cnt)
            (if (< n 1)
                (- cnt 1)
                (iter (/ n 2) (inc cnt))))
        (iter n 0))
    (display (damp_times n))
    (let ((damp (repeated average-damp (damp_times n))))
         (fixed-point (damp (lambda (y) (/ x (expt y (- n 1)))))
                 1.0)))

; damp 1: 2 3
; damp 2: 4 5 6 7
; damp 3: 8 9 10 11 12 13 14 15
; damp 4: 2^4 -> 2^5-1
; ...
; damp n: 2^n -> 2^(n+1)-1 TH ROOT