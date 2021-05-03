(define (pal-help1 wd)

	(cond ((= (count wd) 1) #t)
		((equal? (first wd) (last wd)) (pal-help1 (bf (bl wd))))
		(else #f)))

(define (pal-help2 s1)

	(if (> (count s1) 1)
		(word (first s1) (pal-help2 (bf s1)))
		(first s1)))

(define (palindrome? s1)
	(pal-help1 (pal-help2 s1)))
