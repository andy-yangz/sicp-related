; Recursive
; (define (func n)    
;     (cond ((< n 3) n)
;           (else (+ (func (- n 1))
;                     (* (func (- n 2)) 2)
;                     (* (func (- n 3)) 3)))))

; ITerative way
(define (func n) (func-iter 2 1 0 n))
(define (func-iter a b c count)
    (cond ((= count 0) c)
        (else (func-iter (+ a (* b 2) (* c 3))
                         a
                         b
                         (- count 1)))))