;; The Little Schemer defines these functions
;; I don't like to type them all the time
;; Launch scheme from root folder of the project
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

(define lat?
  (lambda (l)
    (cond
     ((null? l) #t)
     ((atom? (car l)) (lat? (cdr l)))
     (else #f))))
