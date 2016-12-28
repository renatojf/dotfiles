;;; I prefer cmd key for meta
(setq mac-option-key-is-meta nil
      mac-command-key-is-meta t
      mac-command-modifier 'meta
      mac-option-modifier 'none)

;; Say y instead of yes
(defalias 'yes-or-no-p 'y-or-n-p)

(provide 'init-key-maps)
