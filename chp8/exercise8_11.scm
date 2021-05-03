 ;; exercise8_11.scm simply scheme

(define (mod x)
(cond ((equal? (last x) '+) 0.33) ((equal? (last x) '-) -0.33) (else 0)))

(define (point x)
(let ((grade (first x)))
	(cond ((equal? grade 'a) 4)
		((equal? grade 'b) 3)
		((equal? grade 'c) 2)
		((equal? grade 'd) 1)
		(else 0))))

(define (gpa x)
(/ (accumulate + (every (lambda (z) (+ (point z) (mod z))) x)) (count x )))  

