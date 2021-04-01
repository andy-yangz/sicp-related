(define (p) (p))
(define (test x y)
    (if (= x 0) 0 y))

(test 0 (p))

; 如果是 Norm 的话，首先会展开然后再执行，那么就会直接获得0
; 如果是 applicative 那么会先执行，然后再进一步展开，而因为 (p) 是指向自己的循环函数所以会陷入无限循环