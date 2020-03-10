#lang sicp
;; practice 1.7: 改进的good-enough策略
;; 试试(sqrt 100000023).
;; 这在1.1.7-demo.rkt中根本行不通。(会一直跑)

(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (diff-percentage x y)
  (/ (abs (- x y)) x))

(define (good-enough? guess x)
  (< (diff-percentage guess (improve guess x))
     0.000001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))