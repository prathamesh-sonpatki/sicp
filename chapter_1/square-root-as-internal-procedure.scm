(define (average a b)
  (/ (+ a b) 2))

(define (square a)
  (* a a))

;; Defining 'square-root-iter', 'good-enough?' and 'improve' functions
;; inside 'sqrt' procedure.
;; 'x' is now used as *free* variable inside 'improve' function and is
;; not passed every internal function

;; This nesting of definitions is called *Block Structure*

(define (sqrt x)

  (define (square-root-iter previous-guess guess)
    (if (good-enough? previous-guess guess)
        guess
        (square-root-iter guess (improve guess))))

  (define (good-enough? previous-guess guess)
    (<
     (abs (- previous-guess guess)) 0.001))

  (define (improve guess)
    (average guess (/ x guess)))

  (square-root-iter 0.0 1.0))
