;; Load neo-tree
(add-to-list 'load-path "~/.emacs.d/vendor/rvm")

(require 'rvm)
(rvm-use-default) ;; use rvm's default ruby for the current Emacs session

(defadvice inf-ruby-console-auto (before activate-rvm-for-robe activate)
  (rvm-activate-corresponding-ruby))

(provide 'init-rvm)
