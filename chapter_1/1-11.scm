;; Write procedures for iterative and recursive processes for function defined by
;; rule f(n) = n if n < 3 and f(n) = f(n-1) + 2 * f(n-2) + 3 * f(n-3) if n >= 3


;; Recursive version

(define (f n)
  (if (< n 3)
      n
     (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))

;; (f 4)
;; (+ (f 3) (* 2 (f 2)) (* 3 (f 1)))
;; (+ (f 3) (* 2 (f 2)) (* 3 1))
;; (+ (f 3) (* 2 2) 3)
;; (+ (f 3) 4 3)
;; (+ (+ (f 2) (* 2 (f 1)) (* 3 (f 0))) 4 3)
;; (+ (+ (f 2) (* 2 (f 1)) (* 3 0)) 4 3)
;; (+ (+ (f 2) (* 2 1) 0) 4 3)
;; (+ (+ 2 2) 4 3)
;; (+ 4 4 3)
;; 11
 
;; Iterative version

(define (f n)
  (if (< n 3)
      n
      (f-iter 0 1 2 (- n 2))))

(define (f-iter a b c diff)
  (if (= diff 0)
      c
      (f-iter b c (+ (* 3 a) (* 2 b) c) (- diff 1))))

;; (f 4)
;; (f-iter 0 1 2 2)
;; (f-iter 1 2 4 1)
;; (f-iter 2 4 11 0)
;; 11
