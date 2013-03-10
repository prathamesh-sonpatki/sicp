;; Write procedures for iterative and recursive processes for function defined by
;; rule f(n) = n if n < 3 and f(n) = f(n-1) + 2 * f(n-2) + 3 * f(n-3) if n >= 3


;; Recursive version

(define (f n)
  (if (< n 3)
      n
     (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))

;; Iterative version

(define (f n)
  (if (< n 3)
      n
      (f-iter 0 1 2 (- n 2))))

(define (f-iter a b c diff)
  (if (= diff 0)
      c
      (f-iter b c (+ (* 3 a) (* 2 b) c) (- diff 1))))
