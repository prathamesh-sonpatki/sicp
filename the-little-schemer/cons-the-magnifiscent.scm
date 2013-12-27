;;; 2nd commandment -
;;; Use cons to build lists

;;; 3rd commandment -
;;; cons first typical element with natural recursion with rest of the elements

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

;; Example
(rember 'sauce '(soy sauce tomato sauce))
(cons 'soy (rember 'sauce '(sauce tomato sauce)))
(cons 'soy '(tomato sauce))

;; firsts
;; Takes a empty list or list of non-empty lists. If a list is empty returns empty
;; Else makes new list of first s-expressions of each child list

(define firsts
  (lambda (l)
         (cond
          ((null? l) '())
          (else
           (cons (car (car l)) (firsts (cdr l)))))))

(firsts '((apple peach)
          (plum pear)
          (grape raisin)))
;; (apple plum grape)

;; insertR - takes 3 arguments. new, old and lat and inserts new atom
;; after first occurance of old atom in lat

(define insertR
  (lambda (new old lat)
    (cond
     ((null? lat) '())
     (else
      (cond
       (eq? old (car lat)) (cons (car lat) (cons new (cdr lat)))
       (else
        (cons (car lat) (insertR new old (cdr lat)))))))))

(insertR 'new 'old '(old))
(insertR 'topping 'fudge '(ice cream with fudge for desert))
(insertR 'e 'd '(a b c d f g h))
(insertR 'a 'b '())
