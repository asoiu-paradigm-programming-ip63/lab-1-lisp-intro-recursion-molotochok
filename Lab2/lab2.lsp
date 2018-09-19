; Markiian Karpa IP-63 V-10

; #### Lab 2 ####

; Task 1
(defun func1 (lst1 lst2)
    (
        (and (null lst1)(null lst2))
        T
    )
    (
        (not equal (car lst1) (car lst2))
        T
    )
    (func1 (cdr lst1) (cdr lst2))
)
; Task 2

; Task 3

; Task 3

; Task 3