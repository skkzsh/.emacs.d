;;;; メニューを日本語化
;; (if (and (= emacs-major-version 22)
;;          (eq window-system 'x))
;;  (setq menu-tree-coding-system 'utf-8))
(when (or (>= emacs-major-version 23)
          (featurep 'meadow))
  (require 'menu-tree)
  )

;;;; 日本語環境設定
(set-language-environment "Japanese")

;;; coding-system
(prefer-coding-system 'utf-8-unix) ; ファイル新規作成時
;; (set-default-coding-systems 'utf-8-unix) ; ファイル新規作成時
;; (setq file-name-coding-system 'utf-8-unix)
;; (set-buffer-file-coding-system 'utf-8-unix)
;; (setq default-buffer-file-coding-system 'utf-8-unix)
;; (set-terminal-coding-system 'utf-8-unix) ; 端末入出力
;; (set-buffer-process-coding-system 'utf-8-unix, 'utf-8-unix)
;; (setq default-process-coding-system 'utf-8-unix, 'utf-8-unix)
;; (set-keyboard-coding-system 'utf-8-unix) ; 日本語入力
;; (set-clipboard-coding-system 'utf-8-unix)

;;; IMEのON/OFFでカーソルの色を変える
(set-cursor-color "#fd3")
(add-hook 'input-method-activate-hook
          (function (lambda () (set-cursor-color "Red"))))
(add-hook 'input-method-inactivate-hook
          (function (lambda () (set-cursor-color "#fd3"))))

(cond
  ;;;; Linux
  ((eq system-type 'gnu/linux)

   ;; make installしたEmacsからもSystemにあるmozc.elをLoad
   (unless (require 'mozc nil t)
     (when
       (file-directory-p "/usr/share/emacs/site-lisp/mozc")
       (add-to-list 'load-path "/usr/share/emacs/site-lisp/mozc")
     ))

   (when (require 'mozc nil t)
     (setq default-input-method "japanese-mozc")
     ;;; 候補の表示 (overlay or echo-area)
     ;; (setq mozc-candidate-style 'overlay)
     (setq mozc-candidate-style 'echo-area)
     )

   ;;; iBus
   ;;; SCIM
   )

  ;;;; Mac
  ((eq window-system 'ns)
   (cond
     ;;; NTEmacs 23
     ((eq emacs-major-version 23)
      ;;; ことえりが起動してしまう!!
      ;; (setq default-input-method "MacOSX")
      ;;; Shift Key有効化
      (mac-add-key-passed-to-system 'shift)
      ;;; Google日本語入力
      ;; (mac-set-input-method-parameter "com.google.inputmethod.Japanese.base" `title "漢")
      ;; (mac-set-input-method-parameter "com.google.inputmethod.Japanese.base" `cursor-type `box)
      ;; (mac-set-input-method-parameter "com.google.inputmethod.Japanese.base" `cursor-color "magenta")
      )
     ))

  ;;;; Windows
  ((eq window-system 'w32)
   (cond
     ;;; NTEmacs 23
     ((>= emacs-major-version 23)
      ;;; IMEの設定
      (setq default-input-method "W32-IME")
      ;;; IMEインジケータ
      (setq-default w32-ime-mode-line-state-indicator "[--]")
      (setq w32-ime-mode-line-state-indicator-list '("[--]" "[あ]" "[--]"))
      ;;; 初期化
      (w32-ime-initialize)
      ;;; バッファ切り替え時にIME状態を引き継ぐ
      ;;    (setq w32-ime-buffer-switch-p nil)
      )

     ;;; Emacs 22
     ((<= emacs-major-version 22)
      ;;; IMEの設定
      (setq default-input-method "MW32-IME")
      ;;; IMEインジケータ
      (setq-default mw32-ime-mode-line-state-indicator "[--]")
      (setq mw32-ime-mode-line-state-indicator-list '("[--]" "[あ]" "[--]"))
      ;;; 初期化
      (mw32-ime-initialize)
      )))
  )
