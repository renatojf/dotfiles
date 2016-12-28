(add-to-list 'load-path "~/.emacs.d/vendor/magit/lisp")
(require 'magit)

(with-eval-after-load 'info
  (info-initialize)
  (add-to-list 'Info-directory-list
               "~/.emacs.d/vendor/magit/Documentation/"))

(provide 'init-magit)
