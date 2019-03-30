(define (square x) (* x x))
(define (>= a b) (or (= a b) (> a b)))

; I could improve this using lists of inputs but I haven't learned that yet
(define (square-and-add-largest a b c)
  (cond ((and (>= a c) (>= b c))
          (+ (square a) (square b)))
         ((and (>= c a) (>= b a))
          (+ (square c) (square b)))
         ((and (>= c b) (>= a b))
          (+ (square c) (square a)))
  ))

(square-and-add-largest 1 3 3)
