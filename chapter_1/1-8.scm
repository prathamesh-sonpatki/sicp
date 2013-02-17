;; Newton's method for cube roots is based on the fact that if y is an
;; approximation to the cube root of x, then a better approximation is
;; given by the value ((x/y^2) + 2y)/3
;; Use this formula to implement a cube-root procedure analogus to the
;; square root procedure.

(define (square x)
  (* x x))

(define (improve guess x)
  (/ (+ (/ x (square guess))
        (* 2 guess))
     3))

(define (improved-good-enough? previous-guess guess)
  (<
   (abs (- previous-guess guess)) 0.001))

(define (cube-root-iter previous-guess guess x)
  (if (improved-good-enough? previous-guess guess)
      guess
      (cube-root-iter guess (improve guess x) x)))

(define (cube-root x)
  (cube-root-iter 0.0 1.0 x))

; (cube-root 64)
; 4.000000000076121

; (cube-root 0.001)
; .10000000198565878
