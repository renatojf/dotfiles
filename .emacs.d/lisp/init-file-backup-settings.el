;; store all backup and autosave files in the tmp dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(setq backup-by-copying t)

(setq delete-old-versions t
  kept-new-versions 4
  kept-old-versions 2
  version-control t)

(provide 'init-file-backup-settings)
