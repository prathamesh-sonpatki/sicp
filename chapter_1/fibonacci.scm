;; Recursive example

(define (fib-recursive n)
  (if (< n 2)
      n
      (+ (fib-recursive (- n 1))
         (fib-recursive (- n 2)))))

;; Iterative example version 1
;; start condition - a = 0, b = 1
;; a -> b
;; b -> a + b

(define (fib-i-1 n)
  (fib-iter 0 1 n))

(define (fib-iter-1 a b n)
  (if (= n 0)
      a
      (fib-iter-1 b (+ a b) (- n 1))))

;; Iterative example version 2
;; start condition - a = 1, b = 0
;; a -> a + b
;; b -> a

(define (fib-i-2 n)
  (fib-iter-2 1 0 n))

(define (fib-iter-2 a b n)
  (if (= n 0)
      b
      (fib-iter-2 (+ a b) a (- n 1))))
