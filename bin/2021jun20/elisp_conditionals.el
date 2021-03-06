;;; elisp_conditionals.el --- quick demos of cond/if in elisp

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

(smaller_too 7 13)
(smaller_too 9 3)

(defun if_smaller (x y)
  "Echo the smaller value"
  (let ( smaller )
    (setq smaller
          (if (< x y) x y))
    (message "smaller: %d" smaller)
    ))

(if_smaller 3 4)
(if_smaller 7 2)

