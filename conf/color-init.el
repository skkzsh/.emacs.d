;;;; Color Settings

;---------------------------------------------------------------------------
;;;;; Color Theme
(add-to-list 'load-path "~/.emacs.d/lisp/color-theme")
(require 'color-theme)
(color-theme-initialize)
;; TODO

(cond
 ((eq window-system 'x)
  (color-theme-hrehf-dark))
 ((eq window-system 'ns)
  (color-theme-hrehf-dark))
 ((eq window-system 'w32)
  (color-theme-wombat))
  )

;; (when window-system
;;   (color-theme-hrehf-dark)
;;   ;; (color-theme-wombat)
;;   ;; (color-theme-railscasts)
;;   )

;; (when (>= emacs-major-version 24)
;; (load-theme 'molokai t)
;; (enable-theme 'molokai)
;; )

;---------------------------------------------------------------------------
;;; 透明度
(cond
 ((eq window-system 'x)
  (add-to-list 'default-frame-alist '(alpha . 90)))
 ((eq window-system 'ns)
  (add-to-list 'default-frame-alist '(alpha . 90)))
 ((eq window-system 'w32)
  (add-to-list 'default-frame-alist '(alpha . 90)))
  )


;;; 対応括弧をハイライト表示
(show-paren-mode t)
;;; tと追加可能
;; (setq show-paren-style 'mixed)
;; (set-face-background 'show-paren-match-face "plum2")
;; (set-face-foreground 'show-paren-match-face "Blue")


;;; 行末Space, Tabの表示
(setq-default show-trailing-whitespace t)
(set-face-background 'trailing-whitespace "Pink")


;;; 選択regionの色
(setq-default transient-mark-mode t)
(set-face-background 'region "LightBlue")

;;; IMEのON/OFFでカーソルの色を変える
(set-cursor-color "#fd3")
(add-hook 'input-method-activate-hook
          (function (lambda () (set-cursor-color "Magenta"))))
(add-hook 'input-method-inactivate-hook
          (function (lambda () (set-cursor-color "#fd3"))))


;;; 現在行をハイライト
;;; 色指定
  (defface my-hlline-face
           (if window-system

             '((((class color) (background dark))
                (:background "gray20"))
               (((class color) (background light))
                (:background "gray20"))
               (t ()))

             '((((class color) (background dark))
                (:background "LightGray"))
               (((class color) (background light))
                (:background "LightGray"))
               (t ()))

             )
           "*Face used by hl-line.")

(setq hl-line-face 'my-hlline-face)
;;; 下線
;; (setq hl-line-face 'underline)
;;; 有効
(global-hl-line-mode)


;---------------------------------------------------------------------------
;;; 不可視文字の表示 (jaspace-modeでも)
;;; 強調表示するもの
;; (setq whitespace-style
;;       '(face tabs spaces trailing space-mark tab-mark lines-tail))
(setq whitespace-style
      '(face tabs spaces space-mark tab-mark))
;;; Spaceの定義を全角Spaceとする?
(setq whitespace-space-regexp "\\(\x3000+\\)")
;;; White Spaceを常に表示 (何故かtimestampを無効化してしまう)
(global-whitespace-mode t)
;;; 表示する文字, 色

(if window-system
    (progn
      (setq whitespace-display-mappings
            '(
              (space-mark ?\x3000 [?\□])
              (tab-mark   ?\t   [?\xBB ?\t])
              ;; (newline-mark   ?\n   [8629 ?\n])
              ))
      (set-face-foreground 'whitespace-space "SkyBlue")
      (set-face-background 'whitespace-space "NavyBlue")
      (set-face-foreground 'whitespace-tab "gray50")
      (set-face-background 'whitespace-tab "gray25")
      ;; (set-face-background 'whitespace-trailing "DeepPink")
      )

  (progn
    (setq whitespace-display-mappings
          '(
            ;; (space-mark ?\x3000 [?\□])
            (tab-mark   ?\t   [?\xBB ?\t])
            ;; (newline-mark   ?\n   [8629 ?\n])
            ))
    (set-face-foreground 'whitespace-space "DarkCyan")
    (set-face-background 'whitespace-space "LightCyan")
    (set-face-foreground 'whitespace-tab "DarkGray")
    (set-face-background 'whitespace-tab "LightGray")
    ;; (set-face-background 'whitespace-trailing "DeepPink")
    )
  )


;;; バッファ中のキーワードを色付け
(global-font-lock-mode t)
;;; 色付け方
;; (setq font-lock-support-mode 'jit-lock-mode)
