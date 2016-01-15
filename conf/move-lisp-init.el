;;;; Motion Settings by Extensions
;---------------------------------------------------------------------------
;;;; historyを保存し，次回起動時にそのhistoryを再利用
;; FIXME: 保存件数が増えない.
(require 'session)
;; 前回閉じたときの位置にカーソルを復帰
;; (setq session-undo-check -1)
(setq history-length 100) ;; ミニバッファ履歴の最大長 (Default:30)
(setq session-initialize '(de-saveplace session keys menus places)
      session-globals-include
      '(
        (kill-ring 50)             ; kill-ring の保存件数 (Default:10)
        (session-file-alist 500 t) ; カーソル位置の保存件数 (Default:100)
        (file-name-history 1000)  ; ファイルを開いた履歴の保存件数 (Default:200)
        ))
;; (setq session-globals-max-size 1000) ; (Default: 50)
;; (setq session-globals-max-string 100000000) ; (Default: 1024)
(add-hook 'after-init-hook 'session-initialize)

;; (setq session-initialize '(session places))
;; (setq session-globals-include '((kill-ring 512)
;;                                   (session-file-alist 512)
;;                                   (file-name-history 512)
;;                                   (tags-table-set-list 128)
;;                                   (tags-table-list 128)))

;---------------------------------------------------------------------------
;;;; Redo
(require 'redo+)

(global-set-key (kbd "C-.") 'redo)
(global-set-key (kbd "C-M-/") 'redo)
(global-set-key (kbd "M-_") 'redo)

(setq undo-no-redo t) ; 過去のundoがredoされないように

(setq undo-limit 600000)
(setq undo-strong-limit 900000)

;---------------------------------------------------------------------------
;;;; Undo History
;; FIXME
;;;; Errorを出すときは, undohistのFileを消してみる.
;; (add-to-list 'load-path "~/.emacs.d/lisp/undohist")
;; (require 'undohist)
; (unless (eq system-type 'windows-nt)
  ;; - Windows :: org-modeやMarkdownのHTML Previewができなくなるため
  ;; Patchを貼る
;; (undohist-initialize)
  ; )

;---------------------------------------------------------------------------
;;;; Point Undo
(require 'point-undo)
(global-set-key "\M-[" 'point-undo)
(global-set-key "\M-]" 'point-redo)

;---------------------------------------------------------------------------
;;;; Goto Change
(require 'goto-chg)
;; (global-set-key "\C-x j" 'goto-last-change)
;; (global-set-key "\C-x J" 'goto-last-change-reverse)

;---------------------------------------------------------------------------
;;;; color moccur
;; TODO
(when (require 'color-moccur nil t)
  ;; (global-set-key "\M-o" 'occur-by-moccur)
  ;;; スペース区切りでAND検索
  (setq moccur-split-word t)
  ;;; Migemo
  (setq moccur-use-migemo t)
  )
;;;; moccur edit

;---------------------------------------------------------------------------
;;;; summarye
;; TODO
(require 'summarye)
;;; INI File用の定義 [XXX]
(add-hook 'conf-windows-mode-hook
          '(lambda () (setq se/item-delimiter-regexp
                            "^\\s-*\\[.+\\]\\s-*$"
                            )
             ))

;---------------------------------------------------------------------------
;;;; recentf
;; (setq recentf-max-saved-items 10000)
;; (require 'recentf-ext)

