;; exerecise 8.6 simply scheme

(define (words x)
	(every (lambda (y)
			(cond ((equal? y 'a) 'apha)
				((equal? y 'b) 'beta)
				((equal? y 'c) 'charlie)
				((equal? y 'd) 'delta)
				(else 'buzz)))
	x))
