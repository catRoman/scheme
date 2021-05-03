;; exercise15_5.scm simply scheme


(define (prepend-every letter sent)
	(if (empty? sent)
		'()
		(se (word letter (first sent))
			(prepend-every letter (bf sent)))))

(define (basecount prep num)
	(if (= 322 (word prep num))
		'!
	(if (= prep 4)
		(word (prepend-every prep (basecount prep num))) 
		(if (= num 3)
			(se (prepend-every prep num) (basecount (+ prep 1) 1)) 		
			(se  (prepend-every prep num) (basecount prep (+ num 1)))))))
		

(define (prepend? sent)
	(= (last sent) 3))
		

(define (basecount2 num)
	(if (= num 3)
		(se num (basecount2 1))
		(se num (basecount2 (+ num 1)))))

(define (test max num)

	(if (= max num)
		'!
	(if (prepend? (first num))
		(prepend-every (basecount2 num) (basecount2 num))
		(basecount2 num)))) 
