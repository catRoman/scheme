(define (evenly-divisible? n d)
	(let ((q (floor (/ n d))))
		(zero? (- n (* q d)))))

(define (bin-help1 num)
	(let ((cp (floor  (/ (log num) (log 2)))))
		(if (or (= cp 0) (evenly-divisible?  (log num) (log 2))) 
			(se cp)
			(se cp (bin-help1 (- num (expt 2 cp)))))))

(define (bin-help2 list)
	(cond ((= (first list) 0) "")
		((= (count list) 1)
			(word '0 (bin-help2 (se (- (first list) 1)))))
		(else (bin-help2 (se (- (- (first list) (first (bf list))) 1))))))

(define (bin-help3 list)
	(if (empty? list)
		""
		(word '1 (bin-help2 list) (bin-help3 (bf list)))))

(define (to-binary num)
	(bin-help3 (bin-help1 num)))
