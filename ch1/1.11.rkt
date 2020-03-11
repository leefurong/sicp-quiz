#lang sicp
;; try (f-rec 30) and (f-iter 30), the latter is much faster!

(define (f-rec n)
  (cond ((< n 3) n)
        (else (+ (f-rec (dec n))
                 (* 2 (f-rec (- n 2)))
                 (* 3 (f-rec (- n 3)))))))


(define (f-iter n)
  (define (-f-iter a b c n)
    (if (= n 0)
        c
        (-f-iter b c (+ (* 1 c)
                        (* 2 b)
                        (* 3 a))
                 (dec n))))
  (cond ((< n 3) n)
        (else (-f-iter 0 1 2 (- n 2)))))