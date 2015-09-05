

(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

;; package installed
;;  evil
;;  ujelly
;;  paredit


(require 'evil)
(evil-mode 1)

;;(define-key evil-normal-state-map (kbd "C-c +") 'evil-numbers/inc-at-pt)
;;(define-key evil-normal-state-map (kbd "C-c -") 'evil-numbers/dec-at-pt)

;;(require 'textmate)
;;(textmate-mode)

; (global-rainbow-delimiters-mode)

(load-theme
 'ujelly t)

(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

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
(set-default-font "monospace-16")

(defalias 'yes-or-no-p 'y-or-n-p)

(setq-default indent-tabs-mode nil)

(setq tab-width 4)
;; (defvaralias 'c-basic-offset 'tab-width)
;; (defvaralias 'cperl-indent-level 'tab-width)

;; (setq url-proxy-services '(("http" . "127.0.0.1:7051")
;;                            ("no_proxy" . "localhost")))

