#lang sicp
;; Alyssa P. Hacker用常规过程写了一个new-if， 而不是一个特殊形式。
;; 答：事实上，if 特殊形式之所以不是一个常规过程， 是因为它后面的三个参数中，
;; else-clause与then-clause只会求值其中之一。
(if #t (display "t") (display "f"))

(display "\n")

;; 而Alyssa写的new-if， 则会对两个clause都求值。
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(new-if #t (display "t") (display "f"))


;; 如此一来， 她的sqrt-iter就会陷入死循环。