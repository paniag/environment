;; .emacs
;; Mac Radigan


  (add-to-list 'load-path "~/.emacs.d/helm")
  (add-to-list 'load-path "~/.emacs.d/evil")
  (add-to-list 'load-path "~/.emacs.d/powerline")
  (add-to-list 'load-path "~/.emacs.d/rich-minority")
  (add-to-list 'load-path "~/.emacs.d/smart-mode-line")
  (add-to-list 'load-path "~/.emacs.d/smart-mode-line/themes")
  (add-to-list 'load-path "~/.emacs.d/key-chord")
  (package-initialize)

  (menu-bar-mode -1)
  (setq inhibit-splash-screen t)
  (setq inhibit-startup-message t)
  (setq initial-scratch-message "")
  (if (get-buffer "*scratch*") (insert-file-contents "~/.emacs.d/banners/my-banner.txt" nil 0 1000))
  (setq-default message-log-max nil)
  (kill-buffer "*Messages*")

  (defalias 'yes-or-no-p 'y-or-n-p)
  (global-linum-mode t)
  (setq linum-format "%3d ")
  (show-paren-mode 1)
  (electric-pair-mode 1)
  (global-font-lock-mode 't)
  (setq confirm-kill-emacs nil)
  (setq confirm-nonexistent-file-or-buffer nil)

  (defun 2-windows-vertical-to-horizontal ()
  (let ((buffers (mapcar 'window-buffer (window-list))))
    (when (= 2 (length buffers))
      (delete-other-windows)
      (set-window-buffer (split-window-horizontally) (cadr buffers)))))
  (add-hook 'emacs-startup-hook '2-windows-vertical-to-horizontal)

  (require 'cl)

  (require 'key-chord)
  (key-chord-mode 1)

; (require 'ido)
; (ido-mode t)

  (require 'helm)
  (require 'helm-config)
  (helm-mode 1)
  (helm-adaptive-mode 1)
  (helm-push-mark-mode 1)

  (require 'evil)
  (evil-mode 1)
  (setq evil-auto-indent t)
  (setq evil-regexp-search t)
  (setq evil-want-C-i-jump t)
  (setq-default evil-shift-width 2)

  (require 'rich-minority)

  (require 'smart-mode-line)
  (setq sml/no-confirm-load-theme t)
; (setq sml/theme 'dark)
; (setq sml/theme 'light)
; (setq sml/theme 'respectful)
  (setq sml/theme 'powerline)
  (sml/setup)

; (require 'powerline)
; (powerline-center-evil-theme)

  (global-set-key (kbd "<f4>") 'speak)
  (global-set-key (kbd "<f5>") 'stop-speaking)

  (require 'eww)
  (setq shr-color-visible-luminance-min 70)
  (global-set-key (kbd "<f3>") 'eww)
  (define-key evil-normal-state-map ",ws" 'eww)
  (define-key evil-normal-state-map ",wf" 'www-finviz)
  (define-key evil-normal-state-map ",ww" 'www-wikipedia)
  (define-key eww-mode-map (read-kbd-macro "/") 'evil-search-forward)
  (define-key eww-mode-map (read-kbd-macro "?") 'evil-search-backward)
  (define-key eww-mode-map (read-kbd-macro "n") 'evil-search-next)
  (define-key eww-mode-map (read-kbd-macro "N") 'evil-search-previous)
  (define-key eww-mode-map (read-kbd-macro "j") 'evil-next-line)
  (define-key eww-mode-map (read-kbd-macro "k") 'evil-previous-line)
  (define-key eww-mode-map (read-kbd-macro "C-j") (lambda () (interactive) (next-line 2) (scroll-up 2)))
  (define-key eww-mode-map (read-kbd-macro "C-k") (lambda () (interactive) (scroll-down 2) (previous-line 2)))
; (define-key eww-mode-map (read-kbd-macro "d") 'evil-scroll-down)
; (define-key eww-mode-map (read-kbd-macro "u") 'evil-scroll-up)
  (define-key eww-mode-map (read-kbd-macro "u") 'eww-back-url)
  (define-key eww-mode-map (read-kbd-macro "U") 'eww-forward-url)
  (define-key eww-mode-map (read-kbd-macro "<backspace>") 'eww-back-url)
  (define-key eww-mode-map (read-kbd-macro "S-<backspace>") 'eww-forward-url)

  (define-key evil-normal-state-map ";l" 'eval-region)
  (define-key evil-normal-state-map ",b" 'electric-buffer-list)
  (define-key evil-normal-state-map ";w" 'save-buffer)
  (define-key evil-normal-state-map ";z" 'suspend-emacs)
  (define-key evil-normal-state-map ",f" 'suspend-emacs)
  (define-key evil-normal-state-map ";q" 'kill-emacs)
  (define-key evil-normal-state-map ";a" 'save-buffers-kill-emacs)
  (define-key evil-normal-state-map ",e" 'dired)
  (define-key evil-normal-state-map ",V" 'evil-visual-block)
; (define-key evil-normal-state-map ",v" '(kbd ":vs"))
; (define-key evil-normal-state-map ",s" '(kbd ":sp"))
  (define-key evil-normal-state-map ";;" '(kbd "\C-g"))
  (define-key evil-normal-state-map ",h" 'evil-window-left)
  (define-key evil-normal-state-map ",j" 'evil-window-down)
  (define-key evil-normal-state-map ",k" 'evil-window-up)
  (define-key evil-normal-state-map ",l" 'evil-window-right)
  (define-key evil-normal-state-map ",X" 'evil-window-rotate-downwards)
  (define-key evil-normal-state-map ",o" 'delete-other-windows)
  (define-key evil-normal-state-map ",i" 'delete-window)
  (define-key evil-normal-state-map ",v" 'split-window-horizontally)
  (define-key evil-normal-state-map ",s" 'split-window-vertically)

  ;;; esc quits
  (defun minibuffer-keyboard-quit ()
      "Abort recursive edit.
  In Delete Selection mode, if the mark is active, just deactivate it;
  then it takes a second \\[keyboard-quit] to abort the minibuffer."
    (interactive)
    (if (and delete-selection-mode transient-mark-mode mark-active)
      (setq deactivate-mark  t)
      (when (get-buffer "*Completions*") (delete-windows-on "*Completions*"))
        (abort-recursive-edit)))
  (define-key evil-normal-state-map [escape] 'keyboard-quit)
  (define-key evil-visual-state-map [escape] 'keyboard-quit)
  (define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
  (define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
  (define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
  (define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
  (define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)
  (global-set-key [escape] 'evil-exit-emacs-state)

  (define-key evil-normal-state-map ";e" 'helm-find-files)
  (define-key evil-normal-state-map ";f" 'helm-find-files)
  (define-key evil-normal-state-map ";m" 'helm-M-x)
  (define-key evil-normal-state-map ";b" 'helm-buffers-list)
  (define-key evil-normal-state-map ";p" 'helm-browse-project)
  (define-key evil-normal-state-map ";s" 'helm-etags-select)
  (define-key evil-normal-state-map ";f" 'helm-etags-select)
  (define-key evil-normal-state-map ";x" 'helm-apropos)

; (define-key evil-normal-state-map ";f" 'ido-find-file)
; (define-key evil-normal-state-map ";b" 'ido-switch-buffer)

  (require 'term)
  (setq system-uses-terminfo nil)
; (add-hook 'term-mode-hook 'char-line-mode)
  (defun open-localhost ()
    (interactive)
      (ansi-term "/bin/zsh" "localhost"))

  (defun visit-ansi-term ()
    "If the current buffer is:
       1) a running ansi-term named *ansi-term*, rename it.
       2) a stopped ansi-term, kill it and create a new one.
       3) a non ansi-term, go to an already running ansi-term
          or start a new one while killing a defunt one"
    (interactive)
    (let ((is-term (string= "term-mode" major-mode))
          (is-running (term-check-proc (buffer-name)))
          (term-cmd "/bin/zsh")
          (anon-term (get-buffer "*ansi-term*")))
      (if is-term
          (if is-running
              (if (string= "*ansi-term*" (buffer-name))
                  (call-interactively 'rename-buffer)
                (if anon-term
                    (switch-to-buffer "*ansi-term*")
                  (ansi-term term-cmd)))
            (kill-buffer (buffer-name))
            (ansi-term term-cmd))
        (if anon-term
            (if (term-check-proc "*ansi-term*")
                (switch-to-buffer "*ansi-term*")
              (kill-buffer "*ansi-term*")
              (ansi-term term-cmd))
          (ansi-term term-cmd)))))
; (define-key evil-normal-state-map ";s" 'open-localhost)
  (define-key evil-normal-state-map ";s" 'visit-ansi-term)
; (global-set-key (kbd "<f2>") 'electric-buffer-list)
  (global-set-key (kbd "<f2>") 'visit-ansi-term)
 
  (defun switch-to-previous-buffer ()
    "Switch to previously open buffer.
     Repeated invocations toggle between the two most recently open buffers."
    (interactive)
      (switch-to-buffer (other-buffer (current-buffer) 1)))
  (key-chord-define-global ",a" 'switch-to-previous-buffer)

  (defun ask-before-closing ()
    "Ask whether or not to close, and then close if y was pressed"
    (interactive)
    (if (y-or-n-p (format "Are you sure you want to exit Emacs? "))
        (if (< emacs-major-version 22)
            (save-buffers-kill-terminal)
          (save-buffers-kill-emacs))
      (message "Canceled exit")))


  (defun www-finviz (stock)
    "Lookup symbol on Finviz.com"
    (interactive "sSymbol: ")
    (eww (format "http://finviz.com/quote.ashx?t=%s" (upcase stock))) )

  (defun www-wikipedia (subject)
    "Lookup topic on Wikipedia.org"
    (interactive "sTopic: ")
    (eww (format "https://secure.wikimedia.org/wikipedia/en/wiki/%s" (downcase subject))) )

  (defun speak ()
    "Read buffer as speech."
    (interactive)
    (write-file "/tmp/temp.speech")
    (start-process-shell-command "speech" "*speech*" 
      "/usr/bin/say" "-v" "Victoria" "-r" "320" "-f" "/tmp/temp.speech") )

  (defun stop-speaking ()
    "Stop reading buffer as speech."
    (interactive)
    (kill-buffer "*speech*") )

;; *EOF*
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
