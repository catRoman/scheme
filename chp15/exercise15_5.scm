(define (sumbase x y carry)
    (let ((tocheck (+ (last x) (last y) carry)))
        (cond ((and (= carry 1) (= (count x) 1)) (word 1 (- tocheck 3)))
                ((and (< tocheck 3)(= (count x) 1) (= carry 0)) tocheck) 
                ((and (>= tocheck 3)(= (count x) 1)) (word 1 (- tocheck 3)) ) 
                ((>= tocheck 3)
                    (word (sumbase (bl x) (bl y) 1) (- tocheck 3)))
                (else 
                    (word (sumbase (bl x) (bl y) 0) tocheck)))))

(define (padzero zc num)
    (if(= (- zc (count num)) 0)
        num
        (word 0 (padzero (- zc 1) num))))

(define (loop1 cn tc max)
    (let ((num (sumbase (padzero 9 cn) (padzero 9 1) 0)))
        (if(= tc (- max 1))
            (se num)
            (se num (loop1 num (+ tc 1) max))
            )))



(define (loop max)
    (loop1 0 0 max))

(define (numtoletters num)
    (cond ((= num 2) 'abc)
            ((= num 3) 'def)
            ((= num 4) 'ghi)
            ((= num 5) 'jkl)
            ((= num 6) 'mno)
            ((= num 7) 'pqr)
            ((= num 8) 'stu)
            ((= num 9) 'vwx)
            (else 'wz!)))

(define (numtoletsent num)
    (if (= (count num) 1)
        (numtoletters num)
        (se (numtoletters (first num)) 
            (numtoletsent (bf num)))))

(define (convert num sent)
    
        (if (= (count num) 1) 
            (item (+ 1 (first num))  (first sent))
        (word (item (+ (first num) 1) (first sent)) 
            (convert (bf num) (bf sent)))))

(define (convertloop sent num)
    
    (if (= (count sent) 1) 
       (bf (bf (convert  (first sent) (se '(!!!) '(***) (numtoletsent num)) )))
        
        (se (bf(bf(convert (first sent) (se '(!!!) '(***) (numtoletsent num)))))
            (convertloop (bf sent) num))))

(define (phone-spell num)
    (convertloop (loop (expt 3 7)) num))

