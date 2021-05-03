;; exercise14_14.scm simply scheme

(define (help1 s1 s2)
	 (= (count s1)(count s2)))

(define (helper2 s1 s2)
	 (= (count (first s1))(count (first s2))))

(define (help2 s1 s2)
		(cond ((and (= (count s1) 1) (helper2 s1 s2)) #t)
			((helper2 s1 s2) (help2 (bf s1) (bf s2)))
			(else #f)))

(define (same-shape? s1 s2)
	(and (help1 s1 s2) (help2 s1 s2)))
