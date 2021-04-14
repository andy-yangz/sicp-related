;make-rat version can handle negative arguments
;if numer, denom both < 0, remove negative signs
;if denom < 0, 
;else numer demon
(load "examp_2.1.1.scm")
(define (make-rat n d)
    (let ((g (abs (gcd n d))))
         (if (< d 0) 
            (cons (- (/ n g)) (- (/ d g)))
            (cons (/ n g) (/ d g)))))