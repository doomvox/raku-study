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
    (message smaller)
    ))

(smaller 3 4)
(smaller 7 2)
