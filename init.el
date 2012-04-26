
(require 'package)


(add-to-list 'package-archives
  '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(when (not package-archive-contents)
  package-refresh-contents)


(defvar my-packages '(color-theme
                      evil
                      evil-numbers
                      ir-black-theme
                      zenburn-theme
                      rainbow-delimiters
                      lua-mode
                      textmate
                      yasnippet
                      inf-ruby
                      paredit
                      auto-complete
                      ))
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))


(require 'evil)
(evil-mode 1)


;;(add-to-list 'load-path "~/.emacs.d/vendor/evi-numbers")
;;(require 'evil-numbers)

;;(define-key evil-normal-state-map (kbd "C-c +") 'evil-numbers/inc-at-pt)
;;(define-key evil-normal-state-map (kbd "C-c -") 'evil-numbers/dec-at-pt)

;(require 'ack)
(require 'paredit)

(require 'textmate)
(textmate-mode)

(global-rainbow-delimiters-mode)

(require `yasnippet)
;(setq yas/snippet-dirs "~/.emacs.d/vendor/yasnippet/snippets")
;(yas/load-directory yas/snippet-dirs)
(yas/initialize)

(require `auto-complete-config)
(ac-config-default)

;(require 'ido)
;(ido-mode t)


;(require 'rinari)


(setq
 backup-by-copying t
 backup-directory-alist
 '(("." . "~/.emacs.d/tmp/saves"))
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control t)

(global-linum-mode t)

(set-default 'indent-tabs-mode nil)
(setq-default tab-width 4)

(dolist (mode '(menu-bar-mode tool-bar-mode scroll-bar-mode))
  (when (fboundp mode) (funcall mode -1)))

(setq inhibit-splash-screen t)

(if (or
     (eq system-type 'darwin)
     (eq system-type 'windows-nt))
    (set-default-font "Monaco-14")
  (set-default-font "monospace-9")
  )


;;(byte-recompile-directory "~/.emacs.d" 0)

(defalias 'yes-or-no-p 'y-or-n-p)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (ir-black)))
 '(custom-safe-themes (quote ("b7553781f4a831d5af6545f7a5967eb002c8daeee688c5cbf33bf27936ec18b3" "669feb4d768dcc48feaf1d9c6156d29a587949fd44c0f87121443115de2c265e" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
