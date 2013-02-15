; Ben Bitdiddle has invented a test to deletmine whether the
; interpreter he is faced with is using applicative-order-evaluation
; or normal-order-evaluation. He defines the following two procedures:

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y)
  )

; And then calls test as follows

(test 0 (p))

;; Assume that evaluation of 'if' is same for both applicative
;; and normal order evaluation

;; What behavior will Ben observe with an interpreter that uses
;; applicative-order evaluation?

; Applicative-order evaluation will cause interpreter to go in
; infinite loop as it will try to evaluate (p) before executing test
; function

;; What behavior will Ben observe with an interpreter that uses
;; normal-order evaluation?

; Normal-order evaluation will terminate program returning 0 as the
; result. Because interpreter will not evaluate (p) unless it is
; needed. Program finished before it is needed returning 0 as the result.
