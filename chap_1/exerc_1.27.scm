(load "examp_1.2.6_2.scm")
(define (test-carmichael n) (test-carmichael-num n 1))
(define (test-carmichael-num n m)
    (cond ((= n m) true)
          ((= (expmod m n n) m) (test-carmichael-num n (+ m 1)))
          (else (begin (display m) false))))

; (test-carmichael 561)
; (test-carmichael 1105)
; (test-carmichael 1729)
; (test-carmichael 2465)
; (test-carmichael 2821)
; (test-carmichael 6601)
; All pass test

