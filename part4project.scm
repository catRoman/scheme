;; part4project.scm simply scheme speeling names of huge words

(define (numword num)
	(cond ((= num 1) 'one)
		((= num 2) 'two)
		((= num 3) 'three)
		((= num 4) 'four)
		((= num 5) 'five)
		((= num 6) 'six)
		((= num 7) 'seven)
		((= num 8) 'eight)
		((= num 9) 'nine)
		(else '())))

(define (numword2 num)
	
	(if (< num 10) (numword num)  

	(let ((singledigit (numword (first (bf num)))))
	(cond ((= num 10) (se 'ten))
		((= num 11) (se 'eleven))
		((= num 12) (se 'twelve))
		((= num 15) (se 'fifteen))
		((= (first num) 9) (se 'ninety singledigit))
		((= (first num) 8) (se 'eighty singledigit))
		((= (first num) 7) (se 'seventy singledigit))
		((= (first num) 6) (se 'sixty singledigit))
		((= (first num) 5) (se 'fifty singledigit))
		((= (first num) 4) (se 'fourty singledigit))
		((= (first num) 3) (se 'thirty singledigit))
		((= (first num) 2) (se 'twenty singledigit))
		(else
			(se (word (numword (first(bf num))) 'teen)))
		))))

(define (numword3 num)
	(cond ((< (count num) 3) (numword2 num))
		((> (first num) 0) (se (numword (first num)) 'hundred (numword2 (bf num))))
	(else '())))

(define (numword4 num)
	(let ((wd '(thousand million billion trillion quadrillion quintillion sextillion septillion octillion nonillion decillion)))
	(if (> num 0)	
		(item num wd)
		'())))

(define (numword5 cdp num)
	
	(se (numword4 cdp) (numword3 num)))
	
		 
(define (numword6 cdp num)
	(if (= (count num) 4) (se (numword (first num)) 'thousand (numword3 (bf num))) 
	(if (< (count num) 4) (numword3 num)
		(if (not (= (remainder cdp 3) 0))
			(se (numword3 (first num)) (numword6 (- cdp 1) (bf num)))
			(se (numword5 (/ cdp 3) (word (first num) (first (bf num)) (first (bf (bf num)))))  
				(numword6 (- cdp 3) (bf (bf (bf num)))))))))

(define (number-name num)
	(numword6 (count num) num))
