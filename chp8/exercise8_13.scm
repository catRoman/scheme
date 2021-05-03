(define (phone-unspell x)
(accumulate word 
(every (lambda (y) (cond ((or (equal? y 'a) (equal? y 'b) (equal? y 'c)) 2)
			 ((or (equal? y 'd) (equal? y 'e) (equal? y 'f)) 3)
			 ((or (equal? y 'g) (equal? y 'h) (equal? y 'i)) 4)
			 ((or (equal? y 'j) (equal? y 'k) (equal? y 'l)) 5)
			 ((or (equal? y 'm) (equal? y 'n) (equal? y 'o)) 6)
			 ((or (equal? y 'p) (equal? y 'q) (equal? y 'r)) 7)
			 ((or (equal? y 's) (equal? y 't) (equal? y 'u)) 8)
			 ((or (equal? y 'v) (equal? y 'w) (equal? y 'x)) 9)
			(else 0))) x)))

