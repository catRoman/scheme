;; exercsie12_6.scm simply scheme

(define (gpa grades)
	(let ((letter (first (first grades)))
		(letter-mod (last (first grades))))
		(let ((base-grades
				(cond ((equal? letter 'a) 4)
					((equal? letter 'b) 3)
					((equal? letter 'c) 2)
					((equal? letter 'd) 1)
					(else 0)))
			(grade-mod 
				(cond ((equal? letter-mod '+) 0.33)
					((equal? letter-mod '-) -0.33)
					(else 0))))
				
				(let ((total-grade (+ base-grades grade-mod)))
					(let ((accum-grades 
						((lambda (x) (x x)) 
						(lambda (accum)
							(lambda (num)
								(if (> (count num) 1 )
								(+ (first num)
									((accum accum) (bf num)))
								(first num)))))))
					(if (number? (first grades))
						(/ (accum-grades grades)
							(count grades))
						(gpa (se (bf grades) total-grade))))))))
				
