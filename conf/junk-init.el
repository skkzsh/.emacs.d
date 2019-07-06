;;;; Junk File
(when (require 'open-junk-file nil t)
  ;; (setq open-junk-file-format "~/.junk/%Y-%m%d-%H%M.")
  (setq open-junk-file-format "~/.junk/%y/%m%d-%H%M%S.")
  ;; (global-set-key (kbd "C-x C-z") 'open-junk-file)

  (defun open-junk-file-in-dropbox ()
    "Junk File for Dropbox" ; XXX
    (interactive)

    (let (open-junk-file-format junk-prefix)

      (if (eq system-type 'windows-nt)
        (setq junk-prefix (getenv "USERPROFILE"))
        (setq junk-prefix "~")
        )

      (setq open-junk-file-format
            (concat junk-prefix "/Dropbox/.junk/%y/%m%d-%H%M%S."))

      (open-junk-file)
      )
    )

  )
