;;         (add-to-list 'load-path "~/.emacs.d")
;;         (add-to-list 'load-path "~/.emacs.d/vendor")
;;         
;;         ;;     Vendors
;;         
;;         (add-to-list 'load-path "~/.emacs.d/vendor/color-theme")
;;         (require 'color-theme)
;;         (setq color-theme-is-global t)
;;         (load-file "~/.emacs.d/vendor/color_theme_ir_black/color-theme-ir-black.el")
;;         (color-theme-ir-black)
;;         
;;         ;;(add-to-list 'custom-theme-load-path "~/.emacs.d/vendor/zenburn-emacs")
;;         
;;         (add-to-list 'load-path "~/.emacs.d/vendor/evil")
;;         (require 'evil)  
;;         (evil-mode 1)
;;         
;;         (add-to-list 'load-path "~/.emacs.d/vendor/evil-surround")
;;         (require 'surround)
;;         (global-surround-mode 1)
;;         
;;         ;;(add-to-list 'load-path "~/.emacs.d/vendor/evi-numbers")
;;         ;;(require 'evil-numbers)
;;         ;;
;;         ;;(define-key evil-normal-state-map (kbd "C-c +") 'evil-numbers/inc-at-pt)
;;         ;;(define-key evil-normal-state-map (kbd "C-c -") 'evil-numbers/dec-at-pt)
;;         
;;         (add-to-list 'load-path "~/.emacs.d/vendor/ack")
;;         (require 'ack)
;;         
;;         (add-to-list 'load-path "~/.emacs.d/vendor/textmate")
;;         (require 'textmate)
;;         (textmate-mode)
;;         
;;         (add-to-list `load-path
;;             "~/.emacs.d/vendor/yasnippet")
;;         (require `yasnippet)
;;         (setq yas/snippet-dirs "~/.emacs.d/vendor/yasnippet/snippets")
;;         (yas/load-directory yas/snippet-dirs)
;;         ;(yas/initialize)
;;         
;;         (add-to-list `load-path "~/.emacs.d/vendor/popup")
;;         (add-to-list `load-path "~/.emacs.d/vendor/fuzzy")
;;         (add-to-list `load-path "~/.emacs.d/vendor/auto-complete")
;;         ;(add-to-list `auto-complete-config "~/.emacs.d/")
;;         (require `auto-complete-config)
;;         (ac-config-default)
;;         
;;         (add-to-list `load-path "~/.emacs.d/vendor/evil/lib")
;;         (require `undo-tree)
;;         (global-undo-tree-mode)
;;         
;;         (add-to-list 'load-path "~/.emacs.d/vendor/paredit")
;;         (require 'paredit)
;;         
;;         (add-to-list 'load-path "~/.emacs.d/vendor/lua-mode")
;;         (autoload 'lua-mode "lua-mode" "Lua editing mode." t)
;;         (add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
;;         (add-to-list 'interpreter-mode-alist '("lua" . lua-mode))
;;         
;;         ;; Interactively Do Things (highly recommended, but not strictly required)
;;         (require 'ido)
;;         (ido-mode t)
;;         
;;         (autoload 'ruby-mode "ruby-mode" "Major mode for ruby files" t)
;;         (add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
;;         (add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))
;;         
;;         (add-to-list 'load-path "~/.emacs.d/vendor/inf-ruby")
;;         (autoload 'inf-ruby "inf-ruby" "Run an inferior Ruby process" t)
;;         (autoload 'inf-ruby-keys "inf-ruby" "" t)
;;         (eval-after-load 'ruby-mode
;;           '(add-hook 'ruby-mode-hook 'inf-ruby-keys))
;;         
;;         ;; (add-to-list 'load-path "~/.emacs.d/vendor/rinari")
;;         ;; (require 'rinari)
;;         
;;         (add-to-list 'load-path "~/.emacs.d/vendor/coffee-mode")
;;         (require 'coffee-mode)
;;         
;;         (add-to-list 'load-path "~/.emacs.d/vendor/raibow-delimiters")
;;         (require 'rainbow-delimiters)




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

