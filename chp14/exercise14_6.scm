;; exercise14_6.scm simply scheme

(define (member2? wd s1)
(cond ((and (= (count s1) 1) (not (equal? wd (first s1)))) #f)
	((equal? wd (first s1)) #t)
	(else (member2? wd (bf s1)))))

