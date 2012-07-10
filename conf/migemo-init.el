;;;; Migemo
;;; migemo.elはRename
;;; UNIXでは:
;;; C/Migemoとmigemo-dictはMake Install
;;; Windowsでは:
;;; C/Migemo(とMigemo)とmigemo-dictはCopy

(when (executable-find "cmigemo")

  (setq migemo-command "cmigemo")
  (setq migemo-options '("-q" "--emacs"))

  ;;; migemo-dictのPath
  (cond
   ((or (eq system-type 'gnu/linux)
        (eq system-type 'darwin))
    (setq migemo-dictionary "/usr/local/share/migemo/utf-8/migemo-dict")
    )
   ((eq system-type 'windows-nt)
    (setq migemo-dictionary "C:/usr/local/share/migemo/utf-8/migemo-dict")
    )
   )

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
