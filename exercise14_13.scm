;; exercise4_13.scm simply scheme

(define (helper-pigl wd)
	(if (member? (first wd) 'aeiou)
		(word wd 'ay)
		(helper-pigl (word (bf wd) (first wd)))))

(define (vowel-check? wd)
	(cond ((empty? wd) #f)
		((member? (first wd) 'aeiou) #t)
		(else (helper-check? (bf wd)))))

(define (pigl wd)
	(if (helper-check? wd)
		(helper-pigl wd)
		(word wd 'ay)))	
