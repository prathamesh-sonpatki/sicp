;; Special form 'if' is replaced by 'new-if' which uses 'cond'

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

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

;; 'square-root-iter' defined with the use of 'new-if'

(define (square-root-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (square-root-iter (improve guess x) x)))

;; 'new-if' is not a special form. So it is evaluated using
;; 'applicative order evaluation' where first all operands will be evaulated and
;; then will be passed to operator. But second operator is recursive
;; call to itself so this evaluation will never finish.
;; I got 'Aborting!: maximum recursion depth exceeded' error while
;; executing this.

;; 'if' is a special form which is evaluated in following way.
;; if predicate is true then *then-clause* is evaluated. Otherwise
;; *else-clause* is evaluated.
;; **Both the clauses are never evaluated at the same time**.
