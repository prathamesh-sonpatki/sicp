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

;; list of atoms?

;; takes list of s-exps as input and tells whether its list of atoms
;; or not

(define lat?
  (lambda (l)
    (cond
     ((null? l) #t)
     ((atom? (car l)) (lat? (cdr l)))
     (else #f))))

;; member - atom is a member of list?
;; takes 2 args - atom and list
;; returns true or false based on the fact that atom belongs to list
;; or not

(define member?
  (lambda (l lat)
    (cond
     ((null? lat) #f)
     (else (or
            (eq? l (car lat))
            (member? l (cdr lat)))))))

;; rember - remove a member
;; takes 2 args, atom and a list and creates a new list with first
;; occurance of the atom removed

(define rember
  (lambda (a lat)
    (cond
     ((null? lat) '())
     ((eq? a (car lat)) (cdr lat))
     (else
      (cons (car lat) (rember a (cdr lat)))))))

