;; exercise9_10.scm simply scheme

(define (appearances arg1 arg2)
(count (keep (lambda (x) (equal? x arg1)) arg2)))
