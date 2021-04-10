;Recursive 
(define (cont-frac n d k)
    (define (cont-frac-help i n d k)
        (if (= i k)
            (/ (n k) (d k))
            (/ (n i) (+ (d i) (cont-frac-help (+ 1 i) n d k)))))
    (cont-frac-help 1 n d k))

; Iterative
(define (cont-frac n d k)
    (define (init k)
        (/ (n k) (d k)))
    (define (iter k result)
        (if (< k 1)
            result
            (iter (- k 1) (/ (n k) (+ (d k) result)))))
    (iter (- k 1) (init k)))
    

; (/ 1.0 (cont-frac (lambda (i) 1.0)
;            (lambda (i) 1.0)
;            12))
; We can get 1.6180 so get first 4th decimal correct