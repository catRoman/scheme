;; exercise11_3.scm simply scheme

(define (unspell-letter letter)
	(cond ((member? letter 'abc) 2)
		((member? letter 'def) 3)
		((member? letter 'ghi) 4)
		((member? letter 'jki) 5)
		((member? letter 'mno) 6)
		((member? letter 'prs) 7)
		((member? letter 'tuv) 8)
		((member? letter 'wxy) 9)
		(else 0)))

(define (phone-unspell wd)
	(if (> (count wd) 1)	
		(word (unspell-letter (first wd))
			(phone-unspell (bf wd)))
		(word (unspell-letter wd))))
