;; exercise12_2.scm simply scheme

(define (addup nums)
	(if (= (count nums) 1)
	nums
	(+ (first nums) (addup (bf nums)))))
