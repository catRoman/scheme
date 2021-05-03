;; exercise 14_16.scm simply scheme

(define (syll-help num cnv wd)
	(cond ((and (= (count wd) 1) (vowel-check? wd)) (+ 1 num))
		((= (count wd) 1)  num)
	(else
	(cond	((vowel-check? (first wd)) 
			(if  (equal? (first wd) (first (bf wd)))
				(syll-help num (+ 1 cnv) (bf wd))
				(syll-help (+ num 1)  cnv (bf wd))))
		(else (syll-help num 0 (bf wd)))))))

(define (syllables wd)
	(if (not (vowel-check? wd))
	1
	(syll-help 0 0 wd)))
