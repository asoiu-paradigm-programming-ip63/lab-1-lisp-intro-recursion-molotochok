; Markiian Karpa IP-63 V-10

; #### Lab 1 ####

; Task 1
(write-line "Task 1:")
; Lists:
;   (FIR SED (1 2 3) (5) ())
;   (H J U K (L M N) (D E L))
;   (4 5(6 7))

( write 
    (
        ( lambda (l1 l2 l3)
            (cons (car l1) (cons (car l2) (cons (car l3) '())))
        )
        '(FIR SED (1 2 3) (5) ()) '(H J U K (L M N) (D E L)) '(4 5(6 7))
    )
)

; Task 2
(write-line "")
(write-line "Task 2:")
; Element numbers:
;   l1: 4 
;   L2: 4
;   L3: 3
( defun Func2(l1 l2 l3)
    (cons (NTH 3 l1) (cons (NTH 3 l2) (cons (NTH 2 l3) '())))
)
( write 
    (
        Func2 '(FIR SED (1 2 3) (5) ()) '(H J U K (L M N) (D E L)) '(4 5(6 7))
    )
)

; Task 3
(write-line "")
(write-line "Task 3:")


(defun Func3(l)
    (cond   
        (
            (not (and (integerp (first l)) (integerp (car (last l)))))
            (cons (first l) (cons (car(last l)) ()))
        ) 
        (
            ( and  
                (evenp (first l)) 
                (evenp (car (last l)))
                (> (first l) 0)
                (> (car (last l)) 0)
            )
            (
                cons (expt (car (last l)) 2) (cons (expt (first l) 4) '())
            )
        )
        (
            t (cons (first l) (cons (car(last l)) ()))
        )
    )
)


( write 
    (Func3 '(10 E 84))
)