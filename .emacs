;;flymake installed
;;direx installed
;;smart-window installed
;;emamux installed
;;popup installed
;;tabbar insalled
;;tabbar-ruler installed
;;ruby-mode
;;ruby-end
;;ruby-hash-syntax
;;ruby-refactor
;;ruby-dev
;;ruby-block
;;ruby-tools
;;ruby-compilation
;;ace-jump
(add-to-list 'load-path "~/.emacs.d")

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
  )
(require 'cl)
(require 'ido) ;;require the ido
(require 'smart-window) ;;require smart-window that moves windows(above/below/left/right) or rotates windows
(require 'flymake-ruby)
;;enable the tabbar on the top
(tabbar-mode 1)
;;(require 'tabbar-ruler) ;;require tabbar-ruler that rule the tabbar :D 
(add-hook 'roby-mode-hook 'flymake-ruby-load)

;;enable the ido by default
(ido-mode 1)
;;enable mouse events
(xterm-mouse-mode 1)
;;display line number
(global-linum-mode 1)

(load "autosaveconf.el")
;;enable reload-dot-emacs from http://snipplr.com/view/18681
(load "reload-dot-emacs.el")
;;reload-dot-emacs bind key at C-x M-r
(global-set-key (kbd "C-x M-r") 'reload-dot-emacs)
;;AceJump from http://www.emacswiki.org/emacs/AceJump
(global-set-key (kbd "C-x c") 'ace-jump-char-mode)

;;(global-set-key (kbd "C-x M-[ d") 'previous-buffer)
;;(global-set-key (kbd "C-x M-[ c") 'next-buffer)
;;(global-set-key (kbd "M-[ c") 'forward-word)
;;(global-set-key (kbd "M-[ d") 'backward-word)

;;==> below settings are set by emacs interactive shell <==

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (wombat))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(linum ((t (:inherit (shadow default) :background "brightblack" :foreground "brightyellow"))))
 '(tabbar-selected ((t (:inherit tabbar-default :background "color-249" :foreground "color-229"))))
 '(tabbar-unselected ((t (:inherit tabbar-default :box nil))))
 '(tabbar-unselected-modified ((t (:inherit tabbar-default :weight bold))))
 '(widget-field ((t (:background "white" :foreground "brightblack")))))

