;;; elisp_conditionals.el --- quick demo of cond in elisp
(require 'cl-lib)

(defun smaller (x y)
  "Echo the smaller value"
  (let ( smaller )
    (setq smaller
          (cond ((< x y)
                 x)
                (t
                 y)))
    (message "smaller: %d" smaller)
    ))

(smaller 3 4)
(smaller 7 2)

(defun smaller_too (x y)
  "Echo the smaller value"
  (let ( smaller )
    (cond ((< x y)
           (setq smaller x))
          (t
           (setq smaller y)))
    (message "smaller: %d" smaller)
    ))

(smaller_too 3 4)
(smaller_too 7 2)


(defun if_smaller (x y)
  "Echo the smaller value"
  (let ( smaller )
    (setq smaller
          (if (< x y) x y))
    (message "smaller: %d" smaller)
    ))

(if_smaller 3 4)
(if_smaller 7 2)

