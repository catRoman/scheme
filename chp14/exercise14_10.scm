;; exercise14_10.scm simply scheme

(define (c-a-d num s1)
	(cond ((= (count s1) 1) num)
		((equal? (first s1)  (first (bf s1))) (c-a-d (+ num 1) (bf s1)))
		(else (c-a-d num (bf s1)))))

(define (count-adjacent-duplicate s1)
	(c-a-d 0 s1))


