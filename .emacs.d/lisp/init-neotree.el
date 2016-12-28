;; Load neo-tree
(add-to-list 'load-path "~/.emacs.d/vendor/neotree")

(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

(setq projectile-switch-project-action 'neotree-projectile-action)
(setq neo-smart-open t)
(setq neo-window-width 40)

(provide 'init-neotree)
