;;exercise14_9.scm simply scheme

;;helper function
(define (current-location num wd s1)
	(cond ((empty? s1) #f)
		((equal? wd (first s1)) num)
		(else (current-location (+ num 1) wd (bf s1)))))


;; main function 
(define (location wd s1)
	(current-location 1 wd s1))
