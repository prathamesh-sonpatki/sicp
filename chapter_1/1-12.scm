;; Write a procedure that finds pascal's triagngle by recursive process

;; Element in pascal's triangle at row 'a' and column 'b' is given by following procedure

(define (pascal a b)
  (cond ((= b 1) 1)
        ((= b a) 1)
        (else (+ (pascal (- a 1) (- b 1)) (pascal (- a 1) b)))))

;; (pascal 4 3)
;; (+ (pascal 3 2) (pascal 3 3))
;; (+ (+ (pascal 2 1) (pascal 2 2)) (pascal 3 3))
;; (+ (+ 1 1) 1)
;; (+ 2 1)
;; 3

;; This procedure evolves as linear recursion!
