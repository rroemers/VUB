;ex 1.3: Define a procedure that takes three numbers as arguments and returns the sum of the squares
;of the two larger numbers.

;define lower procedures
;Square
(define (sq s) (* s s))
;Sum of Squares
(define (sum-sq a b) (+ (sq a) (sq b)))
;sort for 2 large out of 3 and apply sum of squares
(define (sort x y z)
  (cond ((and (<= x y) (<= x z) (sum-sq y z)))
        ((and (<= y x) (<= y z) (sum-sq x z)))
        ((and (<= z y) (<= z x) (sum-sq y x)))))

(define (sum-of-squares a b c) (sort a b c))

