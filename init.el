
;; (require 'package)

;; (add-to-list 'package-archives
;;   '("marmalade" . "http://marmalade-repo.org/packages/"))
;; (package-initialize)

;; (when (not package-archive-contents)
;;   package-refresh-contents)

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(require 'el-get)
(el-get 'wait)

;; (defvar my-packages '(color-theme
;;                       evil
;;                       evil-numbers
;;                       ;ir-black-theme
;;                       ;git://github.com/jmdeldin/ir-black-theme.el.git
;;                       zenburn-theme
;;                       rainbow-delimiters
;;                       lua-mode
;;                       ack-and-a-half
;;                       textmate
;;                       yasnippet
;;                       inf-ruby
;;                       paredit
;;                       auto-complete
;;                       ))
;; full-ack

;; (dolist (p my-packages)
;;   (when (not (package-installed-p p))
;;     (package-install p)))


(add-to-list 'load-path "/usr/share/ensime/elisp")
(add-to-list 'exec-path "/usr/share/ensime")
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)


(require 'evil)
(evil-mode 1)


;;(add-to-list 'load-path "~/.emacs.d/vendor/evi-numbers")
;;(require 'evil-numbers)

;;(define-key evil-normal-state-map (kbd "C-c +") 'evil-numbers/inc-at-pt)
;;(define-key evil-normal-state-map (kbd "C-c -") 'evil-numbers/dec-at-pt)

;(require 'ack)
(require 'paredit)

(autoload 'ack-and-a-half-same "ack-and-a-half" nil t)
(autoload 'ack-and-a-half "ack-and-a-half" nil t)
(autoload 'ack-and-a-half-find-file-same "ack-and-a-half" nil t)
(autoload 'ack-and-a-half-find-file "ack-and-a-half" nil t)

(require 'textmate)
(textmate-mode)

(global-rainbow-delimiters-mode)

;; (require `yasnippet)
;; ;(setq yas/snippet-dirs "~/.emacs.d/vendor/yasnippet/snippets")
;; ;(yas/load-directory yas/snippet-dirs)
;; (yas/initialize)

; (require `auto-complete-config)
; (ac-config-default)

;(require 'ido)
;(ido-mode t)


; (autoload 'po-mode "po-mode"
;           "Major mode for translators to edit PO files" t)
; (setq auto-mode-alist (cons '("\\.po\\'\\|\\.po\\." . po-mode)
;                             auto-mode-alist))
; 
; (autoload 'po-find-file-coding-system "po-compat")
; (modify-coding-system-alist 'file "\\.po\\'\\|\\.po\\."
;                             'po-find-file-coding-system)


;(require 'rinari)


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

