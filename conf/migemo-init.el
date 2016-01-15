;;;; Migemo
;;; migemo.elはRename
;;; UNIXでは:
;;; C/Migemoとmigemo-dictはMake Install
;;; Windowsでは:
;;; C/Migemo(とMigemo)とmigemo-dictはCopy

(when (executable-find "cmigemo")

  (require 'migemo)

  (setq migemo-command "cmigemo")
  (setq migemo-options '("-q" "--emacs"))

  ;;; migemo-dictのPath
  ;;; XXX: Prefix, Local variable
  (cond
   ((or (eq system-type 'gnu/linux)
        (eq system-type 'darwin))
    (setq migemo-prefix "/usr/local/share/migemo")
    )
   ((eq system-type 'windows-nt)
    (setq migemo-prefix "C:/Applications/cmigemo-default/dict")
    )
   )

  (setq migemo-dictionary
        (concat migemo-prefix "/utf-8/migemo-dict"))

  (setq migemo-user-dictionary nil)
  (setq migemo-regex-dictionary nil)

  ;; Cache
  (setq migemo-use-pattern-alist t)
  (setq migemo-use-frequent-pattern-alist t)
  (setq migemo-pattern-alist-length 1024)

  ;; migemo-dictの文字コード
  (setq migemo-coding-system 'utf-8-unix)

  (load-library "migemo")

  ;; 起動時に初期化
  (migemo-init)
  )
