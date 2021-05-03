(define (common-words s1 s2)
	(keep (lambda (x) (member? x s1))s2))
