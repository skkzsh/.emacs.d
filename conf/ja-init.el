;;;; Japanese Settings
;---------------------------------------------------------------------------
;;;; メニューを日本語化
;; (if (and (= emacs-major-version 22)
;;          (eq window-system 'x))
;;  (setq menu-tree-coding-system 'utf-8))
;; (when (or
;;        (= emacs-major-version 23)
;;        (featurep 'meadow)
;;        )
;;   (when (require 'menu-tree nil t))
;;   )

;---------------------------------------------------------------------------
;;;; 日本語環境設定
(set-language-environment "Japanese")

;;; coding-system
(prefer-coding-system 'utf-8-unix)
;; (set-default-coding-systems 'utf-8-unix)
;; (set-file-name-coding-system 'utf-8-unix)
;; (set-buffer-file-coding-system 'utf-8-unix)
;; (set-terminal-coding-system 'utf-8-unix)
;; (set-keyboard-coding-system 'utf-8-unix)
;; (set-buffer-process-coding-system 'utf-8-unix, 'utf-8-unix)
;; (set-clipboard-coding-system 'utf-8-unix)
;; (setq default-file-name-coding-system 'utf-8-unix)
;; (setq default-buffer-file-coding-system 'utf-8-unix)
;; (setq default-terminal-coding-system 'utf-8-unix, 'utf-8-unix)
;; (setq default-keyboard-coding-system 'utf-8-unix, 'utf-8-unix)
;; (setq default-process-coding-system 'utf-8-unix, 'utf-8-unix)
;; (setq file-name-coding-system 'utf-8-unix)
;; (setq buffer-name-coding-system 'utf-8-unix)
;; (setq keyboard-coding-system 'utf-8-unix)

;; WindowsでのFile名文字化け対策
;; TODO
(when (eq system-type 'windows-nt)
  (set-file-name-coding-system 'sjis-dos)
  ;; (setq default-file-name-coding-system 'sjis-dos)
  ;; (setq file-name-coding-system 'sjis-dos)
  )

;; TODO mode-hook

;---------------------------------------------------------------------------
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
  ;; FIXME
  ((eq window-system 'ns)
   ;; (mac-get-current-input-source) ; 確認
   ;; ことえりが起動してしまう!!
   ;; (setq default-input-method "MacOSX")
   ;;; Google IME
   ;; (mac-set-input-method-parameter "com.google.inputmethod.Japanese.base" `title "漢")
   ;; (mac-set-input-method-parameter "com.google.inputmethod.Japanese.base" `cursor-type `box)
   ;; (mac-set-input-method-parameter "com.google.inputmethod.Japanese.base" `cursor-color "Magenta")
   ;;; Shift Key有効化
   ;; (mac-add-key-passed-to-system 'shift)
     )

  ;;;; Windows
  ((eq window-system 'w32)
   (setq default-input-method "W32-IME")
   ;;; IMEの設定
   ;;; IMEインジケータ
   (setq-default w32-ime-mode-line-state-indicator "[--]")
   (setq w32-ime-mode-line-state-indicator-list '("[--]" "[あ]" "[--]"))
   (w32-ime-initialize)
   ;;; バッファ切り替え時にIME状態を引き継ぐ
   ;; (setq w32-ime-buffer-switch-p nil)
     )
  )

;; mini bufferに移動した際は最初に日本語入力が無効な状態にする
;; (add-hook 'minibuffer-setup-hook 'deactivate-input-method)
