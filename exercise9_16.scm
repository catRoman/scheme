;; exercise9_16.scm simply scheme


(define (aplize f)
(lambda (x) (if (sentence? x) (every f x) (f x))))
