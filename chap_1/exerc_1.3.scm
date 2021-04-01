(define (sum-of-bigger-two a b c)
    (cond ((and (> a c) (> b c)) (+ a b))
        ((and (> a b) (> c b)) (+ a c))
        (else (+ b c))))

(sum-of-bigger-two 10 4 6)