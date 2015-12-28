#!/usr/bin/sbcl --script
;; lisp-install.lisp
;; Mac Radigan

;# curl -O http://beta.quicklisp.org/quicklisp.lisp

;(load "quicklisp.lisp")
(load "quicklisp.lisp")
(quicklisp-quickstart:install :path "~/.quicklisp/")
(ql:add-to-init-file)

;; *EOF*
