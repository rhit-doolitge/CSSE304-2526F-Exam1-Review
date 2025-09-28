#lang racket
(provide double make-decreasing remove-symbols remove-instances-of count-occurences insert-sorted make-max-list expand-ranges
         expand-symbols multiply-by-index sum-deep max-depth flatten-list recurs-factory pipeline-creator total-sum
         square-each-then-sum curried-list-check curried-remove curried-cons make-dinosaur priority-list slay-slime mine-for-diamonds)

;;-------------------------------------------------
;; Easy Recursion Problems
;;-------------------------------------------------


; This function takes in a list of numbers and should
; return a list that contains all of the incoming
; values doubled
; Ex: '(1 2 3) -> '(2 4 6)
(define double
  (lambda (lst)
    'nyi))


; This function takes in a list of numbers and should
; remove all the numbers that are not decreasing in
; value. (The highest value should be the first element
; and decrease from there)
; Ex: '(7 5 9 3 2 5 9 6 5 1) -> '(7 5 3 2 1)
(define make-decreasing
  (lambda (lst)
    'nyi))

; This function takes in a list of numbers and symbols.
; The function should remove all the symbols from the list
; Ex: '(1 5 3 f 7 w 48) -> '(1 5 3 7 48)
(define remove-symbols
  (lambda (lst)
    'nyi))

; This function takes in a number (val) and a list of numbers (lst).
; The function should remove all instances of the value input from
; the list. There is a built in to do this called remove* but it is
; to your benefit to implement it from scratch.
; Ex: 2 '(1 2 3 4 2) -> '(1 3 4)
(define remove-instances-of
  (lambda (val lst)
    'nyi))

; This function takes in a number (val) and a list of numbers (lst).
; The function should count the number of instances of the value in
; the list. You might want to try to do this tail recursively or not
; your choice.
; Ex: 2 '(1 2 3 4 2 2) -> 3
(define count-occurences
  (lambda (val lst)
    'nyi))

;;-------------------------------------------------
;; Hard Recursion Problems
;;-------------------------------------------------


; This function takes in a value and a sorted lst of numbers
; the function should insert the value into the list and output
; the new list with the inserted value.
; Ex: 4 '(1 2 3 5 6) -> '(1 2 3 4 5 6)
(define insert-sorted
  (lambda (val lst)
    'nyi))

; This function takes in two lists. the function should output
; a new list where each element is the maximum between the two values
; at that location in the inputted lists. The lists are not
; necessarily the same length.
; Ex: '(1 2 3 4) '(4 3 1 2) -> '(4 3 3 4)
(define make-max-list
  (lambda (lst-one lst-two)
    'nyi))

; Write a function that takes a series of ranges expressed as pairs
; (e.g. (1 3) corresponds to (1 2 3)).  The function should return a
; list of numbers where the ranges have been expanded into a list of
; numbers in increasing order.
; Ex: '((5 7) (9 10)) -> '(5 6 7 9 10)
(define expand-ranges
  (lambda (lst)
    'nyi))

; This function takes in a list of the form '((4 a) (5 b)). The
; function then expands multiplies these symbols by the amount they
; are paired with and outputs a list of the symbols.
; Ex: '((4 a) (2 b)) -> '(a a a a b b)
(define expand-symbols
  (lambda (lst)
    'nyi))

; This function takes in a list of numbers and multiplies each by their
; index. Assume zero based indexing.
; Ex: '(3 5 7 23) -> '(0 5 14 69)
(define multiply-by-index
  (lambda (lst)
    'nyi))

;;-------------------------------------------------
;; Deep Recursion Problems
;;-------------------------------------------------

; This function takes a list of lists of lists ... (a list of arbitrary
; depth) and flattens it into a regular list.
; Ex: '(1 4 6 ((5 2) 7 3)) -> '(1 4 6 5 2 7 3)
(define flatten-list
  (lambda (lst)
    'nyi))

; This function takes a list of lists of lists ... (a list of arbitrary
; depth) and finds the maximum depth of the list. Assume the base case is
; depth 1.
; Ex: '(1 4 6 ((5 2) 7 3)) -> 3
(define max-depth 
  (lambda (lst)
    'nyi))

; This function takes a list of lists of lists ... (a list of arbitrary
; depth) and sum the elements in the list.
; Ex: '(1 4 6 ((5 2) 7 3)) -> 28
(define sum-deep
  (lambda (lst)
    'nyi))

;;-------------------------------------------------
;; Object Problems
;;-------------------------------------------------

;Write a procedure that creates a "dinosaur."
;Dinosaurs should be able to take 4 commands: "feed," "toilet," "meteor," and "autopsy."
;Dinosaurs should store two pieces of information, its stomach,
;and whether it has been hit by a meteor.

;"feed": Dinosaurs can eat one piece of food at a time
;and hold up to three at once in its stomach.
;If a dinosaur has already eaten three pieces of food,
;they must use the toilet before eating more.
;If a dino has been hit by a meteor, it can no longer feed.

;"toilet": Dinosaurs can remove the first element of its stomach by using the toilet.
;A dino will output/return the removed element, and adjust its stomach accordingly.

;"meteor": Dinosaurs may occasionally be hit by falling meteors.
;They unfortunately will not be able to feed or toilet once they have been struck.

;"autopsy": Archaeologists may want to determine what was in a dinosaur's stomach at
;the time of its death. They are too cowardly to approach a dinosaur who is still alive, however.
(define make-dinosaur
  (lambda ()
    'nyi))

;Write a procedure that creates a priority list
;Priority lists should be able to take 5 commands: "empty?", "push", "pop", "peek", and "change-priority-func".
;Priority lists should store two pieces of information
;and is expected to maintain a sorted order

;"empty?": Returns #t or #f whethere or not the list is empty

;"push": adds a new item to the priority list
;and should be an O(n) operation

;"pop": removes and returns the highest priority item in the list
;and should be an O(1) operation

;"peek": returns the highest priority item in the list
;and should be an O(1) operation

;"change-priority-func": changes the function that is creating the priority order of the list
;and should be an O(nlogn) operation. It is expected that this function reorders the list
;based on the new priority. Hint: there may be a useful built in function for this
(define priority-list
  (lambda (func)
    'nyi))

;;-----------------------------------------------
;; Follow The Grammar Problems
;;-----------------------------------------------

; Problem 1: Slaying Slimes
;
; <Slime-Army> ::= ({Slime}*)
; <Slime>      ::= Mega_Slime | Big_Slime | Medium_Slime | Small_Slime
;
; In this system, slimes are repeatedly transformed using
; these rules:
;
; Mega_Slime   -> Big_Slime Big_Slime
; Big_Slime    -> Medium_Slime Medium_Slime Medium_Slime
; Medium_Slime -> Small_Slime Small_Slime Small_Slime Small_Slime
; Small_Slime  -> Slime_Ball

; Make a procedure called slay-slime that covers two run through the slaying slimes
; syntax. If you encounter a Slime_Ball nothing should happen to it.
; Ex. (slay-slime '(Medium_Slime Small_Slime)) -> '(Slime_Ball Slime_Ball Slime_Ball Slime_Ball Slime_Ball)

(define slay-slime
  (lambda (slime-army)
    'nyi))


; Problem 2: Mining for Diamonds
;
; <Mine>  ::= ({<Block>}*)
; <Block> ::= Diamond_Ore | Iron_Ore | Lapis_Ore | Redstone_Ore | Lava!!
;
; In this system, mined ores are transformed using
; these rules:
;
; Diamond_Ore  -> Diamond
; Iron_Ore     -> (Raw_Iron Raw_Iron)
; Lapis_Ore    -> Lapis Lapis Lapis
; Redstone_Ore -> RED (stone) RED
;
; !! If there is lava you turn back with what you have. !!
; (A.K.A. Stop recursing)

; Make a procedure call mine-for-diamonds that covers one run through the mine
; Ex. (mine-for-diamonds '(Diamond_Ore))

(define mine-for-diamonds
  (lambda (mine)
    'nyi))

;;-------------------------------------------------
;; Currying Problems
;;-------------------------------------------------

; This functions works exactly like cons but is just curried.
; Ex: ((curried-cons '(2 3 4 5 6)) 1) -> '(1 2 3 4 5 6)
(define curried-cons
  'nyi)

; This functions removes from the given list the element given
; Ex: ((curried-remove '(2 3 4 5 6)) 4) -> '(2 3 5 6)
(define curried-remove
  'nyi)

; This function takes a list and value and returns the amount of
; times that value appears in the list.
; Ex: ((curried-remove '(2 4 4 5 4)) 4) -> 3
(define curried-list-check
  'nyi)

;;-------------------------------------------------
;; Map and Apply Problems
;;-------------------------------------------------

; This function takes in a list of integers and squares all the values
; then it sums the squares. This should only use map and apply no
; recursion.
; Ex: '(1 2 3) -> 14
(define square-each-then-sum
  (lambda (lst)
    'nyi))

; This function takes in a list of list of numbers and sums the all of
; the values from the sublists. This should only use map and apply no
; recursion.
; Ex: '((1 4 5) (3 5 7)) -> 25
(define total-sum
  (lambda (lst)
    'nyi))

;;-------------------------------------------------
;; Metafunctions Problems
;;-------------------------------------------------

; This function takes a list of functions and returns a new function.
; The new function applies the given functions in sequence to its input.
(define pipeline-creator
  (lambda (lst-of-operations)
    'nyi))

; This Function takes in a procedure and a zero-value ansd return a
; procedure that takes in a number. The procedure that is returned should
; be a function that relies on num - 1. So it should recursively reduce
; the input number by one using the original input procedure to combine all
; of the values. when the number reaches 0 it should return the base value.
; The inputted procedure should take two inputs that it is combining.
; Ex: (define sum-squares (recurs-factory 0 (lambda (n agg) (+ (* n n) agg))))
; (sum-squares 3) -> 14 (3*3 + 2*2 + 1*1)
(define recurs-factory
  (lambda (zero proc)
    'nyi))
