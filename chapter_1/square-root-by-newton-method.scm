;; Newton's method to calculate square root of a number
;; Start with a guess, if it's not good enough, improve it by
;; averaging guess and (number/guess). Repeat this untill guess is not
;; good enough

(define (abs x)
  (if (> x 0) x (- x)))

(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs 
      (- x (square guess))) 0.0000000001))

(define (square-root-iter guess x)
  (if (good-enough? guess x)
      guess
      (square-root-iter (improve guess x) x)))

;; I like this idea of wrapping main square-root-iter function in sqrt
;; function. square-root-iter needs initial 1.0 guess to support it's
;; recursive nature. But it should be invisible to outside world. So
;; we have defined sqrt function which takes only one argument, the
;; number which we want to find square root, and it calls
;; square-root-iter function with 1.0 as a starting guess.

(define (sqrt x)
  (square-root-iter 1.0 x))
