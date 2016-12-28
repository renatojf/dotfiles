(setq backup-directory-alist `(("." . "~/.emacs.d/.bkp")))

(setq backup-by-copying t)

(setq delete-old-versions t
  kept-new-versions 4
  kept-old-versions 2
  version-control t)

(provide 'init-file-backup-settings)
