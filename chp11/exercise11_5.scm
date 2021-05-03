;; exercise11_5.scm simply scheme

(define (initials s1)
	(if (= (count s1) 1) 
		(first (first s1))
		(se (first (first s1))
			(initials (bf s1)))))
