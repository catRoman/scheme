;; exercise12_8.scm siomply scheme

(define (numbers s1)

		(if (empty? s1)	
'()
	(let ((check (if (number? (first s1)) (first s1)  '() )))
			(se check (numbers (bf s1))))))
