;; exercise12_10.scm simply scheme

(define (remove wd s1)
	(if(empty? s1)
		'()
		(se (if(equal? wd (first s1)) '() (first s1)) (remove wd (bf s1)))))
		
