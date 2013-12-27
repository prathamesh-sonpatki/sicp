;;; lat is List of Atoms
;;; lat checks for each item of a list is atom or not
;;; if it reaches end of list without encoutering list, returns true
;;; otherwise it returns false

(lat? '(Jack Sprat could eat no chicken fat))
;; #t

(lat? '((Jack) Sprat could eat no chicken fat))
;; #f because it contains a list (Jack)

(lat? '(Jack (Sprart could) eact no chicken fat))
;; #f because it contains one list

(lat? ())
;; #t Yes. lat? asks each S-expresssion if it atom or not. When it
;; runs out of S-expressions without encountering a list result is #t,
;; else it is #f

(lat? '(bacon (and eggs)))
;; #f as it contains a list (and eggs)

;;; 'or' asks two questions
;;; if first question is true, it stops and returns true
;;; else it returns whatever the result of second question

(or (null? ()) (atom? (d e f g)))
;; (or #t (atom? (d e f g)))
;; #t

(or (null? '(d e f g)) (null? ()))
;; (or #f (null? ()))
;; (or #f #t)
;; #t

(or (null? '(a b c)) (null? '(atom)))
;; (or #f (null? '(atom)))
;; (or #f #f)
;; #f

;; member?
;; #t if a is member of list of atoms lat

;; my version
(define pps-member?
  (lambda (a lat)
     (cond
      ((null? lat) #f)
      ((eq? (car lat) a) #t)
      (else (pps-member? a (cdr lat))))))

;; book version
(define member?
  (lambda (a lat)
    (cond
     ((null? lat) #f)
     (else (or
            (eq? (car lat) a)
            (member? a (cdr lat)))))))
