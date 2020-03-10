#lang sicp
;;定义一个过程， 以三个数为参数, 返回其中较大的两个数之和。
(define (<=all a b c)
  (and (<= a b)
      (<= a c)))

(define (sum-top-2 x y z)
  (cond ((<=all x y z) (+ y z))
        ((<=all y x z) (+ x z))
        ((<=all z x y) (+ x y))))
