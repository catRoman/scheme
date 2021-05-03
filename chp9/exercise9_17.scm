;; exercise9_17.scm simply scheme

(define (new-keep pred arg)
(accumulate se (every (lambda (x) (if(pred x) x '())) arg)))
