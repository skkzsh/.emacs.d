;;;; Migemo
;;; UNIXでは:
;;; C/Migemoとmigemo-dictはbrew install
;;; Windowsでは:
;;; C/Migemo(とMigemo)とmigemo-dictはCopy

(when (executable-find "cmigemo")

  (require 'migemo)

  (setq migemo-command "cmigemo")
  (setq migemo-options '("-q" "--emacs"))

  ;;; migemo-dictのPath
  ;;; XXX: Prefix
  (setq migemo-dictionary
        (file-name-directory (executable-find "cmigemo"))
        )

  (cond
    ;; ((executable-find "brew")
    ;;  (setq migemo-dictionary
    ;;        (concat
    ;;          (shell-command-to-string "brew --prefix cmigemo")
    ;;          "/share/migemo")
    ;;        )
    ;;  )

    ((or (eq system-type 'gnu/linux)
         (eq system-type 'darwin))
     (setq migemo-dictionary "/usr/local/share/migemo")
     )

    ((eq system-type 'windows-nt)
     (setq migemo-dictionary
           (concat migemo-dictionary "/dict")
           )
     )
    )

  (setq migemo-dictionary
        (concat migemo-dictionary "/utf-8/migemo-dict")
        )

  (setq migemo-user-dictionary nil)
  (setq migemo-regex-dictionary nil)

  ;; Cache
  ;; (setq migemo-use-pattern-alist t)
  ;; (setq migemo-use-frequent-pattern-alist t)
  ;; (setq migemo-pattern-alist-length 1024)

  ;; migemo-dictの文字コード
  (setq migemo-coding-system 'utf-8-unix)

  ;; (load-library "migemo")

  ;; 起動時に初期化
  (migemo-init)
  )
