(defun org-babel-execute:lurk (body params)
  "Execute a block of lurk code with org-babel."
  (org-babel-eval
   lurk-executable
   body))

