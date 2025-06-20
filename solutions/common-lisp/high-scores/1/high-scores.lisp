(defpackage :high-scores
  (:use :cl)
  (:export :make-high-scores-table :add-player
           :set-score :get-score :remove-player))

(in-package :high-scores)

;; Define make-high-scores-table function
(defun make-high-scores-table ()
  (make-hash-table))

;; Define add-player function
(defun add-player (table player)
  (setf (gethash player table) 0))

;; Define set-score function
(defun set-score (table player score)
  (setf (gethash player table) score))

;; Define get-score function
(defun get-score (table player)
  (or (gethash player table) 0))

;; Define remove-player function
(defun remove-player (table player)
  (remhash player table))
