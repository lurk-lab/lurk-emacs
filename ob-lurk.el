;;; ob-lurk.el --- Evaluate lurk code in org mode
;;; Commentary:
;;; 
;;; Code:

(require 'org)
(require 'lurk-mode)

(defun org-babel-execute:lurk (body _)
  "Execute BODY (a block of lurk code) with org-babel."
  (org-babel-eval
   lurk-executable
   body))
;;; ob-lurk.el ends here
