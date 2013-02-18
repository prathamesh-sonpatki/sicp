;; sum of two numbers can be found out in a different way as follows

;; only works for positive x 

(define (+ x y)
  (if (= x 0)
      y
      (+ (-1+ x) (1+ y))))

; (-1+ 2) decrement 2 by 1 
; (1+ 2)  increment 2 by 1
