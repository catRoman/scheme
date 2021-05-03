;; exercise 9_15.scm simply scheme

(define (type-check f pred)
(lambda (x) (if (pred x) (f x) #f)))
