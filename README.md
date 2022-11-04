# lurk-emacs
Emacs IDE functionality for lurk

## Installation
There is no package in existing repositories yet, manual installation only. 
Assuming you've cloned this repo to `/home/user/lurk-emacs`, in the `*scratch*` buffer paste 

```emacs-lisp
(require 'package)
(add-to-list 'package-archives '("local" . "/whatever/temppath/elpa")) 
;; or whatever path you want to use as a temporary local package archive
```
`M-x eval-buffer`

`M-x package-upload-file` `RET` `/home/user/lurk-emacs/lurk-mode.el`

`M-x package-install` `RET` `lurk-mode`
 
## Configuration
`M-x customize-variable` `RET`, enter the location of your lurk binary, 
eg `/home/user/lurk-rs/target/release/lurkrs`, and save the changes.

## To start a repl

`M-x lurk-repl`
