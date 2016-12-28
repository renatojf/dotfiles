(require 'auto-complete-config)

(add-to-list 'ac-dictionary-directories
             "~/.emacs.d/elpa/auto-complete-20161029.643/dict/ruby-mode")

(ac-config-default)
(setq ac-ignore-case nil)

(add-to-list 'ac-modes 'enh-ruby-mode)
(add-to-list 'ac-modes 'web-mode)

(provide 'init-auto-complete)
