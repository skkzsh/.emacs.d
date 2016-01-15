;;;; Appearance Settings
;---------------------------------------------------------------------------
;;; 起動時の画面を非表示にする
;; (unless
;;   (eq window-system 'ns)
   (setq inhibit-startup-message t)
   ;; )
;;; scratchバッファのメッセージを消す(Emacs23)
(setq initial-scratch-message nil)

;---------------------------------------------------------------------------
;;;; Barの表示
(when (null window-system)
  ;;; Menu Bar
  (menu-bar-mode 0)
  ; (menu-bar-mode nil)
  )
(when window-system
  ;;; Tool Bar
  (tool-bar-mode 0)
  )
;;; Scroll Bar
;; (set-scroll-bar-mode nil)

;---------------------------------------------------------------------------
;;; Buffer終端の表示
;; (setq-default indicate-empty-lines t)

;---------------------------------------------------------------------------
;;; Mode Line に列番号を表示
(column-number-mode t)

;---------------------------------------------------------------------------
;;; 画面分割しても折り返す(Emacs22)
(setq truncate-partial-width-windows nil)

;---------------------------------------------------------------------------
;;; 行間
;; (setq-default line-spacing 1)

;---------------------------------------------------------------------------
;;; Keywords
;; (font-lock-add-keywords
;;   'emacs-lisp-mode
;;   '(("\\<\\(FIXME\\|TODO\\|BUG\\|XXX\\|NOTE\\):" 1
;;      font-lock-warning-face t)))

;---------------------------------------------------------------------------
;;; Buffer名が重複した場合に分かりやすくする
;; filename<dir> 形式にする
;; (setq uniquify-buffer-name-style 'post-forward-angle-brackets)
;; *で囲まれたBuffer名を対象外
(setq uniquify-ignore-buffers-re "*[^*]+*")

;---------------------------------------------------------------------------
;;;; Cursor

;;;点滅
;; (blink-cursor-mode nil)
;; (setq blink-cursor-interval 0.5)
;; (setq blink-cursor-delay 1)
;;; 形状
;; (setq cursor-type 'box)       ; Box
;; (setq cursor-type 'hollow)    ; Box
;; (setq cursor-type 'hbar)      ; 下線
;; (setq cursor-type '(bar . 3)) ; 幅~Pointの縦棒
;; (add-to-list 'default-frame-alist '(cursor-type . box)) ; Box
;; (add-to-list 'default-frame-alist '(cursor-type . hollow)) ; Box
;; (add-to-list 'default-frame-alist '(cursor-type . hbar)) ; 下線
(add-to-list 'default-frame-alist '(cursor-type . bar)) ; 幅~Pointの縦棒

;;;; Cursor (Windows)
;;; キー入力すると消える
(setq w32-hide-mouse-on-key t)
;;; 一定時間マウス操作をしないと消える
(setq w32-hide-mouse-timeout 5000)

;---------------------------------------------------------------------------
;;;; zone
;; (require 'zone)
;; (zone-when-idle 1200) ; ~秒Idleならzone
