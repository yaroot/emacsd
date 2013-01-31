
;; (require 'package)

;; (add-to-list 'package-archives
;;   '("marmalade" . "http://marmalade-repo.org/packages/"))
;; (package-initialize)

;; (when (not package-archive-contents)
;;   package-refresh-contents)

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(require 'el-get)
(el-get 'wait)

;; color-theme-ir-black
;; el-get
;; evil
;; evil-leader
;; evil-numbers
;; evil-surround
;; full-ack
;; paredit
;; rainbow-delimiters
;; scala-mode
;; textmate
;; zenburn-theme

(add-to-list 'load-path "~/.emacs.d/opt/scala-mode")
(require 'scala-mode-auto)

(add-to-list 'load-path "~/.local/opt/ensime/elisp")
(add-to-list 'exec-path "~/.local/opt/ensime")
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

;(require 'evil)
(evil-mode 1)

;;(define-key evil-normal-state-map (kbd "C-c +") 'evil-numbers/inc-at-pt)
;;(define-key evil-normal-state-map (kbd "C-c -") 'evil-numbers/dec-at-pt)

;;(require 'textmate)
;;(textmate-mode)

(global-rainbow-delimiters-mode)

;; (require `yasnippet)
;; ;(setq yas/snippet-dirs "~/.emacs.d/vendor/yasnippet/snippets")
;; ;(yas/load-directory yas/snippet-dirs)
;; (yas/initialize)

; (require `auto-complete-config)
; (ac-config-default)



(setq
 backup-by-copying t
 backup-directory-alist
 '(("." . "~/.emacs.d/auto-save-list"))
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control t)

(global-linum-mode t)


(load-file "~/.emacs.d/el-get/color-theme-ir-black/color-theme-ir-black.el")
(color-theme-ir-black)
;(load-theme 'ir-black t)
;(load-theme 'zenburn t)

(set-default 'indent-tabs-mode nil)
(setq-default tab-width 4)

; menu-bar-mode tool-bar-mode scroll-bar-mode
(dolist (mode '(tool-bar-mode scroll-bar-mode))
  (when (fboundp mode) (funcall mode -1)))

(setq inhibit-splash-screen t)

(if (or
     (eq system-type 'darwin)
     (eq system-type 'windows-nt))
    (set-default-font "Monaco-14")
  (set-default-font "DejaVu Sans Mono-10")
;  (set-default-font "monospace-9")
  )

(defalias 'yes-or-no-p 'y-or-n-p)

