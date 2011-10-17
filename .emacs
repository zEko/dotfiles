
;; ENVIRONMENT
(add-to-list 'load-path "~/elisp")
(add-to-list 'load-path "~/elisp/theme")
(add-to-list 'load-path "~/elisp/matlab-emacs")
(server-start)
(setq-default major-mode 'text-mode)

;; LATEX MODE
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)

;; SUPER PROGRAMMING IDE
(load-file "/usr/share/emacs/site-lisp/cedet/common/cedet.el")

;; DICTIONARY
(load "dictionary-init")
(global-set-key "\C-cs" 'dictionary-search)
(global-set-key "\C-cm" 'dictionary-match-words)

;; DEFAULT MODES

;; LISP CONFIG
;(setq inferior-lisp-program "/usr/bin/sbcl")
;(add-to-list 'load-path "/usr/share/emacs/emacs/site-lisp/slime")
;(require 'slime)
;(slime-setup)

;; THEMING
;(require 'color-theme)
;(setq color-theme-is-global t)
;(load-file "~/elisp/theme/color-theme-gruber-darker.el")
;(color-theme-gruber-darker)
(set-face-foreground 'default "green")
(set-face-background 'default "black")

;; STARTUP AND INTERFACE
(setq inhibit-startup-message t)
;(tool-bar-mode -1)
;(scroll-bar-mode -1)

;; FONT-LOCK
(global-font-lock-mode t)

;; INTERNET
;; w3m settings
(require 'w3m-load)
(setq browse-url-browser-function 'w3m-browse-url)
(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
;; optional keyboard short-cut
(global-set-key "\C-xm" 'browse-url-at-point)

;; Conkeror
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "/usr/bin/conkeror")

;; VERILOG CONFIG
(autoload 'verilog-mode "verilog-mode" "Verilog mode" t ) 
(add-to-list 'auto-mode-alist '("\\.[ds]?v\\'" . verilog-mode)) 
; Any files in verilog mode should have their keywords colorized 
(add-hook 'verilog-mode-hook '(lambda () (font-lock-mode 1)))
(add-hook 'verilog-mode-hook '(lambda () 
(add-hook 'local-write-file-hooks 
(lambda() (untabify (point-min) (point-max))))))

;; MATLAB CONFIG
(require 'matlab-load)
(add-to-list 'auto-mode-alist '("\\.m\\'" . matlab-mode)) 

;; ROOT FACILITIES
(require 'tramp)
(setq tramp-default-method "sudo")

;; X-INTEGRATION
(setq x-select-enable-clipboard t)

;; ICICLES
(require 'icicles)
(eval-after-load "ring" '(progn (require 'ring+)))

;; ANTIWORD FOR MS-WORD
(require 'no-word)
(add-to-list 'auto-mode-alist '("\\.doc\\'" . no-word))

;; CSS+HTML CONFIG
(autoload 'css-mode "css-mode" "Mode for editing CSS files" t)
;Zen coding : ronney.github
;(zdd-to-list "~/elisp/zencoding-mode")
(require 'zencoding-mode)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/or-mode.org"))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
