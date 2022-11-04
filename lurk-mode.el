;;; lurk-mode.el --- A major mode for editing lurk files
;; Authors: Jeff Weiss <jweiss@protocol.ai>
;; Maintainer: Jeff Weiss <jweiss@protocol.ai>
;; URL: http://github.com/lurk-lang/lurk-emacs
;; Package-Version: 20221103.3
;; Keywords: languages lurk lisp
;; Version: 0.1.2
;; Package-Requires: ((emacs "25.1"))

;; This file is not part of GNU Emacs.

;;; Commentary:

;; A major mode based on scheme.  Also provides a REPL buffer.

;; To start editing lurk files, first run (or add to your init files)

;;   (require 'lurk-mode)

;; To get an interactive session, first make sure the custom variable
;; `lurk-executable' is set.

;;   M-x customize-variable RET lurk-executable

;; then set the value to be the full path to the lurk binary.  Next run

;;   M-x lurk-repl

;;; Code:
(defvar lurk-keywords
  '("lambda" "let" "letrec" "cons" "strcons" "hide" "begin" "car" "cdr"
    "commit" "num" "comm" "char" "eval" "open" "secret" "atom" "emit" "if"
    "current-env"))

;;;###autoload
(define-derived-mode lurk-mode scheme-mode "Lurk"
  "Lurk mode is a major mode for editing Lurk files."

  (setq font-lock-defaults '(lurk-font-lock-keywords)))

;;;###autoload
(add-to-list 'auto-mode-alist '("\\.lurk\\'" . lurk-mode))

(defcustom lurk-executable "lurk"
  "Location of the lurk binary."
  :type 'string
  :group 'lurk)

;;;###autoload
(defun lurk-repl ()
  "Start lurk repl using the binary specified in `lurk-executable'."
  (interactive)
  (run-lisp lurk-executable)
  (rename-buffer "*lurk*"))

(defvar lurk-font-lock-keywords
  (list (cons (concat
	       "("
	       (regexp-opt lurk-keywords t)
	       "\\>")
	      font-lock-keyword-face)))

(provide 'lurk-mode)
;;; lurk-mode.el ends here

