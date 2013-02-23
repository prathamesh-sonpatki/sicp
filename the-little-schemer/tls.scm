;; The Little Schemer uses these 3 functions extensively
;; I don't like to type them all the time
;; (load "tls.scm")
;; Enjoy!

(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

(define add1
  (lambda (x)
    (+ x 1)))

(define sub1
  (lambda (x)
    (- x 1)))
