;; UI preferences

(load "fonts.el")
(load "hide-modes.el")
(add-hook 'after-change-major-mode-hook 'hide-modes)
(smex-initialize)

(defun use-solarized-theme ()
  (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/solarized")
  (load-theme 'solarized-dark t))

(defun use-zenburn-theme ()
  (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/zenburn")
  (load-theme 'zenburn t))

(if window-system (tool-bar-mode 0)
  (menu-bar-mode 0))

;; quiet startup
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;; UI prefs
(global-font-lock-mode t)
(global-auto-revert-mode t)
(show-paren-mode t)
(setq show-paren-delay 0.0)
(transient-mark-mode t)
(fset 'yes-or-no-p 'y-or-n-p)
(display-time-mode 1)
(setq ido-enable-flex-matching t)
(electric-pair-mode t)

;; cursor
(setq-default cursor-type '(bar . 1))

;; multiple cursors
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; Add line numbers
;; (require 'linum)
;; (global-linum-mode 1)

(setq whitespace-style '(lines))
(setq whitespace-line-column 78)
(global-whitespace-mode 1)

;; Improve scrolling
(setq
 scroll-margin 5
 scroll-conservatively 100000
 scroll-preserve-screen-position 1)

(load-theme 'tango-dark t)
