;; exercise9_11.scm simply scheme

(define (unabbrev s1 s2)
(every (lambda (x) (if (number? x) (item x s2) x)) s1))
