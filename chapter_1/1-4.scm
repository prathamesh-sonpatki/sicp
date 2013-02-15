; Describe the behavior of the following procedure

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b)
  )

;; (> b 0) is the predicate which will be evaluated first
;; if it is true (if (> b 0)) will return +, else it will return -
;; + and - are built in functions
;; So ((if (> b 0) + -) a b) will become (+ a b) if b is positive or
;; (- a b) if b is negative
