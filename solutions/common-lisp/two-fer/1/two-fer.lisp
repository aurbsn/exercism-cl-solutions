(defpackage :two-fer
  (:use :cl)
  (:export :twofer))
(in-package :two-fer)

(defun twofer (name)
  (format nil "One for ~A, one for me." (if name name "you")))
