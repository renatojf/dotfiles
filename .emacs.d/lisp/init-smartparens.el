(require 'smartparens)

(require 'smartparens-config)

;; Always start smartparens mode in ruby-mode.
(add-hook 'ruby-mode-hook 'smartparens-strict-mode)

(smartparens-global-mode t)

(provide 'init-smartparens)
