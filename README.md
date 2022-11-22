# lurk-emacs
Emacs IDE functionality for lurk

## Installation
There are two packages available in the [MELPA](https://melpa.org/)
package repository:

 + `lurk-mode` for code highlighting and REPL interaction
 + `ob-lurk` for using lurk code snippets in org-mode documents 
 
See MELPA's [getting started](https://melpa.org/#/getting-started) to
get connected to their repository. Once you've done that, you can run 

`M-x package-install` `lurk-mode`

and if you also want org-mode functionality, 

`M-x package-install` `ob-lurk`

## Configuration
If `lurkrs` is installed on your `PATH`, you don't need to change
anything. 

If it isn't, run `M-x customize-variable` `RET`, `lurk-executable`
`RET`, enter the location of your lurk binary, eg
`/home/user/lurk-rs/target/release/lurkrs`, and save the changes.

## Usage
### Start a REPL

Run `M-x lurk-repl`. 

### Evaluate expressions

In a .lurk source file, you can run `M-x lurk-eval-last-expression` to
evaluate the given expression preceding point. The result will be
shown in the repl buffer.

### Org-babel

You can use lurk code snippets in org files as follows:

```
#+begin_src lurk
  (+ 1 1)
#+end_src
```

You can execute the code blocks the same as any other org-babel
snippet, `C-c C-c`.

You'll see this appear below the code snippet:

```
#+RESULTS:
: Lurk REPL welcomes you.
: > [3 iterations] => 2
: > Exiting...
```

### Default keybindings

+ `lurk-repl`: `C-c C-r`
+ `lurk-eval-last-sexp`: `C-x C-e`
