(define-derived-mode lurk-mode scheme-mode "Lurk"
    "Lurk mode is a major mode for editing Lurk files")

(add-to-list 'auto-mode-alist '("\\.lurk\\'" . lurk-mode))
  
(provide 'lurk-mode)
