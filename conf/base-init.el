;;;; Memo
;; 設定を場合分けしたい場合は, cond/if/when/unlessを使用.
;; window-system, system-type, emacs(-major)-version,
;; system-configuration, invocation-nameなどを評価.
;; getenvも使用可.
;;
;; 方法は,
;; *scratch*で<C-j>,
;; 任意のTextで<C-xC-e>, <M-:>
;; ielm
;; 等
;;
;; window-system - x, ns, w32, win32, nil, ...
;; system-type   - gnu/linux, darwin, windows-nt, cygwin, ms-dos, ...
;; system-name   -
;; featurep      - meadow, xemacs, ...
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; バックアップファイル
;;1
; (setq backup-inhibited t)
;;2
(setq make-backup-files nil)
;; 自動保存用ファイル(#*#)
(setq auto-save-default nil)
;; 自動保存用ファイル作成までの秒間隔
; (setq auto-save-timeout 15)
;; 自動保存用ファイル作成までのタイプ間隔
; (setq auto-save-interval 60)

;;;; Emacs server
; (cond
;   ((>= emacs-major-version 23)
;    ;; まだ起動していなければ起動
;    (require 'server)
;    (unless (server-running-p)
;      (server-start))
;    )
;   ((<= emacs-major-version 22)
;    ;; 起動
;    (server-start)
;    )
;   )

;;;; ビープ音を消す
(setq visible-bell t)

;; MacでPathを追加
(when (eq window-system 'ns)
  ;; Path (if exist)
  (dolist (dir (list
                  "/usr/texbin"
                  "/usr/local/bin"
                  "/Applications/Xpdf.app"
                  "/Applications/Xpdf.app/bin"
                  "/Applications/gnuplot.app"
                  "/Applications/gnuplot.app/bin"
                  "/Applications/Ghostscript.app"
                  "/Applications/Ghostscript.app/bin"
                  (concat (getenv "HOME") "/perl5/perlbrew/perls/perl-5.16.0/bin")
                  (concat (getenv "HOME") "/.pythonbrew/pythons/Python-2.7.3/bin")
                  (concat (getenv "HOME") "/.rbenv/shims")
                  (concat (getenv "HOME") "/.nodebrew/current/bin")
                  (concat (getenv "HOME") "/.cabal/bin")
                 ))
    (when (and (file-exists-p dir) (not (member dir exec-path)))
      (setenv "PATH" (concat dir ":" (getenv "PATH")))
      (setq exec-path (append (list dir) exec-path))
      )
    )
  )

;; 印刷
(cond
  ((eq system-type 'gnu/linux)
   (progn
     (setq ps-multibyte-buffer 'non-latin-printer) ; 日本語
     (require 'ps-mule)
     (defalias 'ps-mule-header-string-charsets 'ignore)
     ; (setq ps-paper-type 'a4)
     ; (setq lpr-command "lpr")
     ; (setq ps-lpr-command "lpr")
     ; (setq ps-printer-name "")
     ; (setq ps-font-size 7)
     ; (setq ps-n-up-printing 1)
     ; (setq ps-left-margin 20)
     ; (setq ps-right-margin 20)
     ; (setq ps-top-margin 20)
     ; (setq ps-bottom-margin 20)
     ; (setq ps-n-up-margin 20)
     ))

  ;  ((eq system-type 'windows-nt)
  ;   (progn
  ;	 ))
  )
