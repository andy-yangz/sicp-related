(define (expmod base exp n)
    (cond ((= exp 0) 1)
          ((even? exp)
           (remainder
            (* (expmod base (/ exp 2) n)
               (expmod base (/ exp 2)))
            n))
          (else 
           (remainder 
            (* base (expmod base (- exp 1) n))
            n))))

; For the original one because of exp/2 step, the complexity will become O(log(n))
; However if write like this, every (* expmod expmod) will expand twice and twice
; so the complexity become O(log(n)^2) -> O(n)