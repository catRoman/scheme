;; exercise 15_3.scm simply scheme

(define (substring wd)
	(sub-help1 wd wd))

(define (sub-help1 ogwd cwd)
	(if (> (count ogwd) 1)
		(if (= (count cwd) 1) (se cwd (sub-help1 (bf ogwd) (bf ogwd)))
			(se cwd (sub-help1 ogwd (bl cwd))))
		ogwd)) 
