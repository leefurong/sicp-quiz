#lang sicp
;; 块结构中， define出来的名字， 是局部的么？让我们来试试

(define (f x)
  (define (f2)
    x)
  x)

(display (f 3))


; (display (f2))
; 如果执行上面这个语句， 就会出现:
; f2: unbound identifier in: f2
