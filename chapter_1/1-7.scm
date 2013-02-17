;; The good-enough? test used in computing square roots will not be
;; very effective for finding the square roots of very small numbers.
;; Also, in real computers, arithmetic operations are almost performed
;; with limited precision. This makes our test inadequate for very
;; large numbers. Explain these statements showig how the test fails
;; for small and large numbers.

(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs
      (- x (square guess))) 0.001))


(define (square-root-iter guess x)
  (if (good-enough? guess x)
      guess
      (square-root-iter (improve guess x) x)))

(define (sqrt x)
  (square-root-iter 1.0 x))

; (sqrt 64000000)
; 8000.000000000095     (Actual result is 8000)

; (sqrt 0.000016)
; 3.1420314783434114e-2 (Actual result is 0.004)

;; One way to solve this problem is to increase precision in
;; 'good-enough?' function from 0.001 to 0.000000001
;; This will increase accuarcy of the result from the current state.
;; But with computers operate with limited precision so it will not
;; help with very small numbers and very big numbers.

;; An alternative strategy for implemeting 'good-enough?' is to watch
;; how 'guess' changes from one iteration to next and to stop when the
;; change is very small fraction if the guess. Design a square root
;; procedure that used this kind of end test. Does this work better
;; for small and large numbers?

(define (improved-good-enough? previous-guess guess)
  (<
   (abs (- previous-guess guess)) 0.001))

(define (new-square-root-iter previous-guess guess x)
  (if (improved-good-enough? previous-guess guess)
      guess
      (new-square-root-iter guess (improve guess x) x)))

(define (new-sqrt x)
  (new-square-root-iter 0.0 1.0 x))

; (new-sqrt 64000000)
; 8000.                 (Actual result is 8000)

; (new-sqrt 0.000016)
; 4.002215393445349e-3  (Actual result is 0.004)

;; Result is clearly improved as compared to older sqrt function.
