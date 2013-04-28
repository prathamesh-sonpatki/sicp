;; Chapter 1 Toys

;; Atoms

'atom
'turkey
1492
'u
'*abc$'

;; Lists

'(atom)
'(atom turkey or)
'(atom turkey) or        ;; Not a list. 2 S-expressions
                         ;; First is list and second is atom
'((atom turkey) or)

;; S-Expressions

'xyz                     ;; Every atom is S-expression
'(x y z)                 ;; Every list is S-expression
'(( x y) z)
'(how are you doing so far)

;; How many sub-expressions are in the list?

'(how are you doing so far)

;; how, are, you, doing, so, far

;; Is it a list?

'(((how) are) ((you) (doing so) far))

;; Yes. Because it is a collection of S-expressions enclosed by
;; parenthesis

;; What are the S-expressions in '(((how) are) ((you) (doing so) far)) ?

'((how) are)
'((you) (doing so))
'far

;; list enclosing 0 S-expressions(Empty or null list)
() ;; It's not atom because it is list
(() () () ()) ;; Getting Error The object () is not applicable

;; car

;;                 The Law of Car                  ;;

;; The primitive 'car' is defined only for non-empty lists

(car '(a b c))
; a because a if first atom of the list

(car '(( a b c) x y z))
; (a b c) because it is first S-expression of this non-empty list

(car 'hotdog)
; car doesn't apply to atom

(car '())
; car doesn't apply to empty list

(car '(((hotdogs)) (and) (pickle) relish))
; ((hotdogs))

(car (car '(((hotdogs)) (and) (pickle) relish)))
; (hotdogs)

;; car

;;                 The Law of Cdr                  ;;

;; The primitive 'cdr' is defined only for non-empty lists
;; The 'cdr' of any non-empty list is always another *list*

(cdr '(a b c))
; (b c) because (b c) is without (car (a b c))

(cdr '((a b c) x y z))
; (x y z)

(cdr '(hamburger))
; ()

(cdr '((x) t r))
; (t r)

(cdr 'hotdogs)
; cdr is not applicable to atoms

(cdr ())
; can't ask for the cdr of null list

(car (cdr '((b) (x y) ((c)))))
; (car ((x y) ((c))))
; (x y)

(cdr (cdr '((b) (x y) ((c)))))
; (cdr '((x y) ((c))))
; (((c)))

(cdr (car '(a (b (c)) d)))
; (cdr 'a)
; No answer as 'cdr' doesn't apply to atoms

;; cons

;;                 The Law of Cons                  ;;

;; The primitive 'cons' takes two arguments. The second 
;; argument to 'cons' must be a list. The result is a list.

(cons 'peanut '(butter and jelly))
; (peanut butter and jelly)
; Because 'cons' adds the atom at the front of the list

(cons '(banana and) '(peanut butter and jelly))
; ((banana and) peanut butter and jelly)
; Because 'cons' adds any S-expression at the front of the list

(cons '((help) this) '(is very (hard) to learn))
; (((help) this) is very (hard) to learn)

;; cons takes two arguments.
;; the first one is any S-expression;
;; the second one is any list.

(cons '(a b (c)) '())
;; ((a b (c)))

(cons 'a '())
;; (a)

(cons '(a b c) 'b)
;; (( a b c) . d) ??

(cons 'a 'b)
;; (a . b) ??

(cons 'a (car '((b) c d)))
;; (cons 'a '(b))
;; (a b)

(cons 'a (cdr '((b) c d)))
;; (cons 'a '(c d))
;; (a c d)

;; null?

;;                 The Law of Null?                  ;;
;; The primitive 'null?' is defined only for lists.

(null? '())
;; #t

(null? (quote ()))
;; #t

(null? ())
;; #t

(null? '(a b c))
;; #f

(null? 'spagheti)
;; Can't ask null? of an atom
;; #f

;;                 The Law of Atom?                  ;;
;; The primitive 'atom?' is defined for any S-expression.

(atom? 'Harry)
;; #t

(atom? '(Harry had heap of apples))
;; #f

(atom? (car '(Harry had heap of apples)))
;; (atom? 'Harry)
;; #t

(atom? (cdr '(Harry had heap of apples)))
;; (atom? '(had heap of apples))
;; #f

(atom? '(Harry))
;; #f

(atom? (car (cdr '(swing low sweet cherry oat))))
;; (atom? (car '(low sweet cherry oat)))
;; (atom? 'low)
;; #t

(atom? (car (cdr '(swing (low sweet) cherry oat))))
;; (atom? (car '((low sweet) cherry oat)))
;; (atom? '(low sweet))
;; #f
