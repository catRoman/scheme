;; exercise11_7.scm simply scheme

(define (copies num wd)
	(if (= num 0) 
		'()
		(se wd (copies (- num 1) wd))))
