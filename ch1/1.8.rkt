#lang sicp

(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (diff-percentage x y)
  (/ (abs (- x y)) x))

(define (good-enough? guess x)
  (< (diff-percentage guess (improve guess x))
     0.0001))

(define (improve guess x)
  (/ (+ (/ x
           (square guess))
        (* 2 guess))
     3))

(define (cubrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (cubrt-iter (improve guess x) x)))

(define (cubrt x)
  (cubrt-iter 1.0 x))


