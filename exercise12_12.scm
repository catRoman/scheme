;; exercise12_12.scm simply scheme

(define (arabic x)


	(let ((convert (lambda (y)
			 (cond ((equal? y 'i) 1)
				((equal? y 'v) 5)
				((equal? y 'x) 10)
				((equal? y 'l) 50)
				((equal? y 'c) 100)
				((equal? y 'd) 500)
				((equal? y 'm) 1000)
				(else 0)))))
		(if (= (count x) 1)
			(convert (first x))
			(let ((check (if (or (> (convert (first x)) (convert (first (bf x)))) 
						(= (convert (first x)) (convert (first (bf x)))))
					(convert (first x))
					(- (convert (first x))))))
				(let ((accum
					((lambda (x) (x x))
						(lambda (accum1)
							(lambda (num)
								(if (> (count num) 1)
									(+ (first num)
										((accum1 accum1) (bf num)))
									(first num)))))))
					(accum (se check  (arabic (bf x)))))))))
