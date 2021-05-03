(define test5 (test3 1))

(define (test3 num)
	(if (= num 3)
		3	
		(se num (test3 (+ num 1)))))

(define (test2 tc  x)
	(if (= tc 1)
		'*
		(if (> tc 1)
		 
			
				(cond ((= x 1) (prepend-every (item 1 test5) (se  (test2 (- tc 1) (+ x 1)))))
					((= x 2) (prepend-every (item 2 test5) (se  (test2 (- tc 1) (+ x 1)))))
				 	((= x 3) (prepend-every (item 3 test5) (se  (test2 (- tc 1) (+ x 1)))))
				(else  (se test5 (test2 (- tc 1) (+ x 1)))))
			(se (test2 (- tc 1) x))
		)))
