;; exercise12_5.scm simply scheme

(define (exaggerate s1)
	(let ((word (first s1)))
		(let ((check-word
			(cond ((number? word) (* word 2))
				((equal? word 'good) 'great)
				((equal? word 'bad) 'terrible)
				(else word))))
	
				(if (= (count s1) 1) 
					check-word
					(se check-word 
						(exaggerate (bf s1)))))))

