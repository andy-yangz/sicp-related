(load "exerc_2.2.scm")
(define (length seg)
    (let ((p1 (start-segment seg))
          (p2 (end-segment seg)))
          (sqrt (+ (square (- (x-point p1) 
                              (x-point p2)))
                   (square (- (y-point p1) 
                              (y-point p2)))))))

(define (make-rect seg1 seg2)
    (if (< (length seg1) (length seg2))
        (cons seg2 seg1) ; L then W
        (cons seg1 seg2)))
(define (h-rect rect) (length (car rect)))
(define (w-rect rect) (length (cdr rect)))



(define (perimeter-rect rect)
    (* 2 
       (+ (h-rect rect)
          (w-rect rect))))
(define (area-rect rect)
    (* (h-rect rect) (w-rect rect)))

;Alternative implement of rectangle
(define (make-rect p1 p2 p3)
    (let ((seg1 (make-segment p1 p2)) (seg2 (make-segment p2 p3)))
         (if (< (length seg1) (length seg2))
         (cons seg2 seg1) ; L then W
         (cons seg1 seg2))))


;Test1
; (define seg1 (make-segment (make-point 1 1) (make-point 1 2)))
; (define seg2 (make-segment (make-point 1 1) (make-point 3 1)))
; (define rect (make-rect seg1 seg2))
;(perimeter-rect rect) -> 6
;(area-rect rect) -> 2