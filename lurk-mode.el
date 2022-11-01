(define-derived-mode lurk-mode scheme-mode "Lurk"
    "Lurk mode is a major mode for editing Lurk files")

(add-to-list 'auto-mode-alist '("\\.lurk\\'" . lurk-mode))

(defcustom lurk-executable "lurk"
  "Location of the lurk binary"
  :type 'string
  :group 'lurk)

(defun lurk-repl ()
  (interactive)
  (run-scheme lurk-executable)
  (rename-buffer "*lurk*"))

(provide 'lurk-mode)

