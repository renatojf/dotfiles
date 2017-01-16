(require 'smartparens)

(require 'smartparens-config)

;; Always start smartparens mode in ruby-mode.
(add-hook 'ruby-mode-hook 'smartparens-strict-mode)

(smartparens-global-mode t)

(defun my-kill-region-or-line (&optional arg)
  "Kill active region or current line."
  (interactive "p")
  (if (use-region-p)
      (sp-kill-region (region-beginning) (region-end)) ;; strict-mode version of kill-region
    (sp-kill-whole-line))) ;; strict-mode version of kill-whole-line

(provide 'init-smartparens)
