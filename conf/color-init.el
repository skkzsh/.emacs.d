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


;;; 行末Space, Tabの表示
(setq-default show-trailing-whitespace t)
(set-face-background 'trailing-whitespace "DeepPink")


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


;;; 現在行をハイライト
;;; 色指定
(defface my-hlline-face
         '((((class color) (background dark))
            (:background "gray20"))
           (((class color) (background light))
            (:background "snow"))
           (t
             ()))
         "*Face used by hl-line.")
(setq hl-line-face 'my-hlline-face)
;;; 下線
;; (setq hl-line-face 'underline)
;;; 有効
(global-hl-line-mode)


;;; 選択regionの色
(setq-default transient-mark-mode t)
(set-face-background 'region "LightBlue")

;;; バッファ中のキーワードを色付け
(global-font-lock-mode t)
;;; 色付け方
;; (setq font-lock-support-mode 'jit-lock-mode)