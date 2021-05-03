;; simply scheme: chp 1 exercise 3 - 04-20-21

(define (acronym phrase)
  (accumulate word (every first (keep real-word? phrase))))

(define (real-word? wd)
  (not (member? wd '(a the an in of and for to with))))




