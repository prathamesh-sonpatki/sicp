; Define a procedure that takes three numbers as arguments and returns
; the sum of squares of the two larger numbers

(define (square x) (* x x))
; (square 6) 36

(define (sum-of-squares x y) (+ (square x) (square y)))
; (sum-of-squares 3 4) 25

(define (max x y) (if (> x y) x y))
; (max 3 4) 4

(define (sum-of-squares-of-2-larger x y z)
        (sum-of-squares (max x y)
                        (if (= (max x y) x)
                            (max y z)
                            (max x z)
                            )))

; (sum-of-squares-of-2-larger 1 2 3) 13
; (sum-of-squares-of-2-larger 5 4 3) 41
; (sum-of-squares-of-2-larger 1 3 2) 13

;;
;; Another approach (Better)
;;

(define (min x y) (if (< x y) x y))
; (min 10 5) 5

(define (sum-of-squares-of-2-larger x y z)
        (sum-of-squares (max x y)
                        (max (min x y) z)
                        ))

; (sum-of-squares-of-2-larger 1 2 3) 13
; (sum-of-squares-of-2-larger 5 4 3) 41
; (sum-of-squares-of-2-larger 1 3 2) 13
