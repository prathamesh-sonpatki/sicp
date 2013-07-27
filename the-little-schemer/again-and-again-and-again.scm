;; lat is List of Atoms

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
