;Generate Pascal Triangle
;Assume that m and n is row and cols respectively
;Then the equation is
;pascal(m, n) --- 1; m, n ==1
;            |--- 0; n<1 or n>m
;             --- pascal(m-1, n-1) + pascal(m-1, n)

(define (pascal m n)
    (cond ((and (= m 1) (= n 1)) 1)
          ((or (< n 1) (> n m)) 0)
          (else (+ (pascal (- m 1) (- n 1)) (pascal (- m 1) n)))))
