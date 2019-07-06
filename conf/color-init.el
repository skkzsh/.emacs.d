;;;; Color Settings

;;---------------------------------------------------------------------------
;;;;; Color Theme
;; (setq custom-theme-directory "~/.emacs.d/themes/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/el-get/zenburn-theme")
(add-to-list 'custom-theme-load-path "~/.emacs.d/el-get/zenburn-emacs")

(case window-system
  ((x)      (load-theme 'wombat t))
  ((mac ns) (load-theme 'zenburn t))
  ((w32)    (load-theme 'wombat t))
  )

;;---------------------------------------------------------------------------
;;; 透明度
(case window-system
  ((x)      (add-to-list 'default-frame-alist '(alpha . 90)))
  ((mac ns) (add-to-list 'default-frame-alist '(alpha . 95)))
  ((w32)    (add-to-list 'default-frame-alist '(alpha . 90)))
  )

;;---------------------------------------------------------------------------
;;; 対応括弧をHighlight表示
(show-paren-mode t)
;;; tと追加可能
;; (setq show-paren-style 'mixed)
;; (set-face-background 'show-paren-match-face "plum2")
;; (set-face-foreground 'show-paren-match-face "Blue")

;;---------------------------------------------------------------------------
;;; 行末Space, Tabの表示
(setq-default show-trailing-whitespace t)
(set-face-background 'trailing-whitespace "Pink")

;;---------------------------------------------------------------------------
;;; 選択regionの色
(setq-default transient-mark-mode t)
;; (if window-system
;;     (set-face-background 'region "DarkSlateBlue")
;;   (set-face-background 'region "LightBlue")
;;   )

;;---------------------------------------------------------------------------
;;; IMEのON/OFFでCursorの色を変える
;; XXX: Buffer移動のときに誤表示?
(set-cursor-color "#fd3")
(case window-system

  (x
   (add-hook 'input-method-activate-hook
             (lambda () (set-cursor-color "Magenta")))
   (add-hook 'input-method-inactivate-hook
             (lambda () (set-cursor-color "#fd3")))
   )

  (w32
   (add-hook 'w32-ime-on-hook
             (lambda () (set-cursor-color "Magenta")))
   (add-hook 'w32-ime-off-hook
             (lambda () (set-cursor-color "#fd3")))
   )

  (mac

   (add-hook 'mac-selected-keyboard-input-source-change-hook
             (lambda ()
               (set-cursor-color
                (if (string-match "\\.\\(US\\|Roman\\)$" (mac-input-source))
                    "#fd3" "SkyBlue"))
               )
             )
   )
  )

;;---------------------------------------------------------------------------
;;; 現在行をHighlight
;;; 色指定
(defface my-hlline-face
  (if window-system

      '((((class color) (background dark))
         (:background "gray30"))
        (((class color) (background light))
         (:background "gray30"))
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

;;---------------------------------------------------------------------------
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

;;---------------------------------------------------------------------------
;;; Buffer中のKeywordを色付け
(global-font-lock-mode t)
;;; 色付け方
;; (setq font-lock-support-mode 'jit-lock-mode)

;;---------------------------------------------------------------------------
;;; 正規表現のGroupingを色付け
;; (if window-system
    ;; (progn
      ;; (set-face-foreground 'font-lock-regexp-grouping-backslash "orange")
      ;; (set-face-background 'font-lock-regexp-grouping-backslash "white")
      ;; (set-face-foreground 'font-lock-regexp-grouping-construct "red")
      ;; (set-face-background 'font-lock-regexp-grouping-construct "green")
      ;; )

    ;; (progn
      ;; (set-face-foreground 'font-lock-regexp-grouping-backslash "orange")
      ;; (set-face-background 'font-lock-regexp-grouping-backslash "white")
      ;; (set-face-foreground 'font-lock-regexp-grouping-construct "red")
      ;; (set-face-background 'font-lock-regexp-grouping-construct "green")
      ;; )
    ;; )

