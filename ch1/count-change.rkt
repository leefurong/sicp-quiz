#lang sicp
;; 实例： 换零钱方式的统计
;; 为了加深印象， 自己写了一遍.
(define (cc x kind-of-coins)
  (cond ((or (< x 0) (= kind-of-coins 0)) 0)
        ((= x 0) 1)
        (else (+ (cc x (dec kind-of-coins))
                 (cc (- x (top kind-of-coins)) kind-of-coins)))))

(define (top kind-of-coins)
  (cond ((= kind-of-coins 1) 1)
        ((= kind-of-coins 2) 5)
        ((= kind-of-coins 3) 10)
        ((= kind-of-coins 4) 25)
        ((= kind-of-coins 5) 50)))
  
(define (count-change x)
  (cc x 5))