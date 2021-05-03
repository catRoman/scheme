;; exercise14_8.scm simply scheme

(define (expand s1)
	(cond ((= (count s1) 1) s1)
		((and (number? (first s1)) (> (first s1) 1))
			(expand (se (- (first s1) 1) (first (bf s1)) (bf s1))))
		((not (number? (first s1) )) (se (first s1) (expand (bf s1))))
		(else  (expand (bf s1)))))

				 	
