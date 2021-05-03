;; exercise12_9.scm simply scheme

(define (real-word? wd)
	(not (member? wd '(a the an in of and for to with is))))


(define (real-words s1)
	(if (empty? s1)
		'()
		(se (if (real-word? (first s1)) (first s1) '()) (real-words (bf s1)))))
