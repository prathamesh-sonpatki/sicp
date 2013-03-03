;;
;; Recursive solution
;;

(define (factorial n)
  (if (= n 1) 1
      (* n (factorial (- n 1)))))

;; (factorial 5)
;; (* 5 (factorial 4))
;; (* 5 (* 4 (factorial 3)))
;; (* 5 (* 4 (* 3 (factorial 2))))
;; (* 5 (* 4 (* 3 (* 2 (factorial 1)))))
;; (* 5 (* 4 (* 3 (* 2 1))))
;; (* 5 (* 4 (* 3 2)))
;; (* 5 (* 4 6))
;; (* 5 24)
;; 120

;; 
;; Iterative solution
;;

(define (factorial n)
  (fact-iter 1 1 n)
  )

(define (fact-iter product count max-count)
  (if (> count max-count) product
      (fact-iter (* count product) (+ 1 count) max-count)))

;; (factorial 5)
;; (fact-iter 1 1 5)
;; (fact-iter 1 2 5)
;; (fact-iter 2 3 5)
;; (fact-iter 6 4 5)
;; (fact-iter 24 5 5)
;; (fact-iter 120 6 5)
;; 120
