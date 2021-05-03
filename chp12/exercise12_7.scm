;; exercise12_7.scm simply scheme

(define (spell-digit digit)
	(item (+ 1 digit)
		'(zero one two three four five six seven eight nine)))

(define (spell-number x)
	(if (= (count x) 1)
		(spell-digit x)
		(se (spell-digit (first x)) (spell-number (bf x)))))
