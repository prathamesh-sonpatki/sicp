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

;; How many subexpressions are in the list?

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
