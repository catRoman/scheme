;; exercise11_6.scm simply scheme

(define (countdown x)
	(if (= x 0) 
		'blastoff!
		(se x (countdown (- x 1)))))
