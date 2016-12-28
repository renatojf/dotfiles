;;; init.el --- Where all the magic begins
;;
;; This is the first thing to get loaded.
;;
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; Turn off mouse interface early in startup to avoid momentary display
;; You really don't need these; trust me.

(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Load up ELPA, the package manager
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

(projectile-mode)
(linum-mode)

;; Load up color theme folder
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;; Load up color theme
(load-theme 'zenburn t)

;; Load robe-mode
(add-hook 'ruby-mode-hook 'robe-mode)

(eval-after-load 'company
  '(push 'company-robe company-backends))

(add-hook 'robe-mode-hook 'ac-robe-setup)

;; Load configurations
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(require 'init-better-defaults)
(require 'init-ido)
(require 'init-magit)
(require 'init-key-maps)
(require 'init-file-backup-settings)
(require 'init-yaml-mode)
(require 'init-coffee)
(require 'init-haml-mode)
(require 'init-rvm)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("e521c25ef12b83556b1055b8e49c9c33afd991eef7774519644561a963e7f4aa" default)))
 '(package-selected-packages (quote (flycheck flx-ido projectile robe with-editor dash))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
