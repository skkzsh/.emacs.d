;;;; Basic Settings
;;---------------------------------------------------------------------------
;; Backup File
;;1
; (setq backup-inhibited t)
;;2
;; file~
(setq make-backup-files nil)
;; 自動保存用file (#file#)
(setq auto-save-default nil)
;; 自動保存用file作成までの秒間隔
; (setq auto-save-timeout 15)
;; 自動保存用file作成までのタイプ間隔
; (setq auto-save-interval 60)

;;---------------------------------------------------------------------------
;;;; Emacs server
;; (cond
;;   ((>= emacs-major-version 23)
;;    ;; まだ起動していなければ起動
;;    (require 'server)
;;    (unless (server-running-p)
;;      (server-start))
;;    )
;;   ((<= emacs-major-version 22)
;;    ;; 起動
;;    (server-start)
;;    )
;;   )

;;---------------------------------------------------------------------------
(unless (eq window-system 'mac)
  ;; beep音の代わりにvisible-bell
  (setq visible-bell t)
  ;; visible-bellを有効にすると1行目が点滅してしまうので,
  ;; beepを無視
  (setq ring-bell-function 'ignore)
  )

;;---------------------------------------------------------------------------
;; Print
(case system-type
  (gnu/linux
   (setq ps-multibyte-buffer 'non-latin-printer) ; Japanese
   (require 'ps-mule)
   (defalias 'ps-mule-header-string-charsets 'ignore)
   ;; (setq ps-paper-type 'a4)
   ;; (setq lpr-command "lpr")
   ;; (setq ps-lpr-command "lpr")
   ;; (setq ps-printer-name "")
   ;; (setq ps-font-size 7)
   ;; (setq ps-n-up-printing 1)
   ;; (setq ps-left-margin 20)
   ;; (setq ps-right-margin 20)
   ;; (setq ps-top-margin 20)
   ;; (setq ps-bottom-margin 20)
   ;; (setq ps-n-up-margin 20)
   )

  ;;  ((eq system-type 'windows-nt)
  ;;  )
  )
