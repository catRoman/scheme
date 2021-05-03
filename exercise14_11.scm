;; exercise14_11.scm simply scheme

(define (r-a-d s1)
	(cond ((= (count s1) 1) s1)
		((equal? (first s1) (first (bf s1))) 
			(r-a-d (bf s1)))
		(else (se (first s1) (r-a-d (bf s1))))))
