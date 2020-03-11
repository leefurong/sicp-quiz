#lang sicp
(define (yanghui row col)
  (if (or (= col 0) (= col row))
      1
      (+ (yanghui (dec row) col)
         (yanghui (dec row) (dec col)))))

      
(define (yanghui-row row)
  (define (yanghui-pos row col)
    (display (yanghui row col))
    (display "\t\t"))
  (define (yanghui-pos-iter row col pending)
    (yanghui-pos row col)
    (if (> pending 0)
        (yanghui-pos-iter row (inc col) (dec pending))
        ))
  (yanghui-pos-iter row 0 row))


(define (yanghui-triangle row)
  (define (white n)
    (define (* s n)
      (if (= n 0)
          ""
          (string-append s (* s (dec n)))))
    (display (* "\t" n)))
  (define (yanghui-triangle-iter row pending)
    (white pending) ; leading whitespace
    (yanghui-row row)
    (display "\n")
    (if (> pending 0)
        (yanghui-triangle-iter (inc row) (dec pending))))
  (yanghui-triangle-iter 0 row))

    
    