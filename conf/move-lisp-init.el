;;;; ace-jump
(global-set-key "\C-cj" 'ace-jump-mode)
;; (key-chord-define-global "jf" 'ace-jump-mode)


;;;; historyを保存し，次回起動時にそのhistoryを再利用
(require 'session)
(add-hook 'after-init-hook 'session-initialize)
;;; 前回閉じたときの位置にカーソルを復帰
;; (setq session-undo-check -1)
(setq history-length 100) ;; ミニバッファ履歴の最大長 (Default:30)
(setq session-initialize '(de-saveplace session keys menus places)
      session-globals-include
      '(
        (kill-ring 50)             ; kill-ring の保存件数 (Default:10)
        (session-file-alist 500 t) ; カーソル位置の保存件数 (Default:100)
        (file-name-history 10000)  ; ファイルを開いた履歴の保存件数 (Default:200)
        ))
(setq session-globals-max-string 100000000) ; (Default: 1024)


;;;; Redo
(require 'redo+)
(global-set-key (kbd "C-.") 'redo)
(global-set-key (kbd "C-M-/") 'redo)
(global-set-key (kbd "M-_") 'redo)
(setq undo-no-redo t) ; 過去のundoがredoされないように
(setq undo-limit 600000)
(setq undo-strong-limit 900000)


;;;; Undo History
;;;; Errorを出すときは, undohistのFileを消してみる.
(add-to-list 'load-path "~/.emacs.d/lisp/undohist")
(require 'undohist)
; (unless (eq system-type 'windows-nt)
  ;; - Windows :: org-modeやMarkdownのHTML Previewができなくなるため
  ;; Patchを貼る
(undohist-initialize)
  ; )


;;;; Point Undo
(require 'point-undo)
(global-set-key "\M-[" 'point-undo)
(global-set-key "\M-]" 'point-redo)


;;;; Goto Change
(require 'goto-chg)
;; (global-set-key "\C-xj" 'goto-last-change)
;; (global-set-key "\C-xJ" 'goto-last-change-reverse)


;;;; color moccur
(require 'color-moccur)
;; (global-set-key "\M-o" 'occur-by-moccur)
;;; スペース区切りでAND検索
(setq moccur-split-word t)
;;; Migemo
(setq moccur-use-migemo t)

;;;; moccur edit


;;;; summarye
(require 'summarye)

;;;; dired


;;;; recentf
;; (setq recentf-max-saved-items 10000)
;; (require 'recentf-ext)

;;;; bashのようにミニバッファのヒストリをインクリメンタルサーチ
;; (require 'minibuf-isearch)
