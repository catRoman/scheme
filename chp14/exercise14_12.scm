;; exercise14_12.scm simply scheme

(define (progressive-squares s1)
	(let ((helper? (if (equal? (first (bf s1)) (square (first s1))) #t #f)))

		(cond ((and (= (count s1) 2) (helper?)) #t)
			((helper?) (progressive-squares (bf s1)))
			(else #f))))
