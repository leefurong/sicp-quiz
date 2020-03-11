#lang sicp
;; Ackermann
;; 经过手算，
;; (A 1 10)是2^10 == 1024
;; (A 2 4)是2^(2^(2^2)) == 2^16
;; (A 3 3)也是2^(2^(2^2)) == 2^16
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(display (A 1 10))
(display "\n")
(display (A 2 4))
(display "\n")
(display (A 3 3))
(display "\n")

;; 第二个小题
;; (A 0 n) ==> 2*n
;; (A 1 n) ==> 1^n
;; (A 2 n) ==> 2^(2^(2^2))...(n个2)
