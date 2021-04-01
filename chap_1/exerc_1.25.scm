(load "examp_1.2.4.scm")
(define (expmod base exp n)
    (remainder (fast-exp base exp) n))

; Compare original one, this one will wait a long long time
; The reason is that alyssa's one will compute exp first which is a very big num if base exp is big.
; And then go to remainder
; This will make overflow, and is quite inefficient
; But original one, will do remainder a lot to make a the exp in a acceptable range 