;; exercise8_7.scm simply scheme

(define (exaggerate x)
	(every (lambda (y) 
			(cond ((number? y) (* y 2))
				((equal? y 'good) 'great)
				((equal? y 'bad) 'terrible)
				(else y))
		) x))
