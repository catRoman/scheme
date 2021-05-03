;; project culminating part 1-3 bridge hands value\
;;
;; points: a-4, k-3, q-2, (2-10)-0
;; 	exp: hand-> 2a,k,2j,8(2-10) 
;;	hnad-value: 13
;;
;; extra suit-dependent points:
;;	only	 2 same suit  		+1
;;	""  	 1 same suit 		+2
;;	no matching suits in hand	+3
;;
;; program: h5 => 5 of hearts, dk => king of diamonds, etc.
;;
;; April 25 2021 cat Roman

; takes a single card as arg and returns the value of the card

(define (card-val card)
	(let ((card-value (bf card)))
		(cond ((equal? card-value 'a) 4)
			((equal? card-value 'k) 3)
			((equal? card-value 'q) 2)
			((equal? card-value 'j) 1)
			(else 0))))

; takes a hand as its arg and return total number of points from high cards in hand
; does not take into consideration distributive points

(define (high-card-points hand)
	(accumulate + (every (lambda (x) (card-val x)) hand)))

; takes a suit and ahand as arguments and returns the number of cards in hand that match given suit

(define (count-suit suit  hand)
	(count (keep (lambda (x) (equal? suit (first x))) hand)))

; takes a hand as an argument and returns a sentence containing the number of suits in the hand
; in order: spades, hearts, clubs, diamonds

(define (suit-counts hand)
	(se (count-suit 's hand)
		(count-suit 'h hand)
		(count-suit 'c hand)
		(count-suit 'd hand)))

; takes a number as argument, interpreting as number of cards in suit and return the number of distributed points

(define (suit-dist-points x)
	(cond ((equal? x 2) 1)
		((equal? x 1) 2)
		((equal? x 0) 3)
		(else 0)))

; takes hand as argument and returns number of distributive points

(define (hand-dist-points hand)
	(accumulate + (every (lambda (x) (suit-dist-points x)) (suit-counts hand))))

; takes a hand as an argument and returns total number of points

(define (bridge-val hand)
	(+ (high-card-points hand) (hand-dist-points hand)))
