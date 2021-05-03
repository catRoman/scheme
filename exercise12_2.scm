;; exercise12_2.scm simply scheme

(define (acronym sent)
	(if (= (count sent) 0)
		""
		(word (first (first sent))
			(acronym (bf sent)))))

