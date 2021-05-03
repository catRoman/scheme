;; exercise14_15.scm simply scheme

(define (merge s1 s2)
	(cond ((or (empty? s1)(empty? s2)) (se s1 s2))
		((< (first s1) (first s2)) 
			(se (first s1)  (merge (bf s1)  s2)))
		(else (se (first s2) (merge s1 (bf s2))))))
	
