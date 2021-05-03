;; exercise9_13.scm simply scheme

(define (compose f g)
(lambda (x) (f (g x))))
