

(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

;; package installed
;;  evil
;;  ujelly
;;  paredit


; (add-to-list 'load-path "~/.emacs.d/opt/scala-mode")
; (require 'scala-mode-auto)

; (add-to-list 'load-path "~/.local/opt/ensime/elisp")
; (add-to-list 'exec-path "~/.local/opt/ensime")
; (require 'ensime)
; (add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

(require 'evil)
(evil-mode 1)

;;(define-key evil-normal-state-map (kbd "C-c +") 'evil-numbers/inc-at-pt)
;;(define-key evil-normal-state-map (kbd "C-c -") 'evil-numbers/dec-at-pt)

;;(require 'textmate)
;;(textmate-mode)

; (global-rainbow-delimiters-mode)

(load-theme
 'ujelly t)

(dolist
 (mode '(tool-bar-mode menu-bar-mode scroll-bar-mode))
 (when (fboundp mode) (funcall mode -1)))


(setq
 backup-by-copying t
 backup-directory-alist
 '(("." . "~/.emacs.d/auto-save-list"))
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control t)


(global-relative-line-numbers-mode)

(setq inhibit-splash-screen t)

;; (if (or
;;       (eq system-type 'darwin)
;;       (eq system-type 'windows-nt))
;;   (set-default-font "Monaco-14")
;;   (set-default-font "DejaVu Sans Mono-10")
;;   ;  (set-default-font "monospace-9")
;;   )
(set-default-font "DejaVu Sans Mono-14")

(defalias 'yes-or-no-p 'y-or-n-p)
