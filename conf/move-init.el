;;;; Motion Settings
;---------------------------------------------------------------------------
;; yes-noをy-nに置き換え
(fset 'yes-or-no-p 'y-or-n-p)

;; y or n選択時にIME自動off
; (wrap-function-to-control-ime 'y-or-n-p nil nil)
; (wrap-function-to-control-ime 'yes-or-no-p nil nil)

;---------------------------------------------------------------------------
;; 補完
;; Find fileの補完で大文字・小文字を区別しない
(when (eq system-type 'gnu/linux)
  (setq read-file-name-completion-ignore-case t)
  )

;; M-xで補完
; (icomplete-mode t)
(when (<= emacs-major-version 23)
  ;; 分割補完
  (partial-completion-mode t)
  )

;---------------------------------------------------------------------------
;; ウィンドウ分割時にShift+カーソルキーで移動
; (windmove-default-keybindings)
;; ウィンドウ分割字にC-tで移動
(global-set-key "\C-t" 'other-window)
;; 反対側のウィンドウに移動可
(setq windmove-wrap-around t)
;; C-M-{h,j,k,l}でウィンドウ間を移動
;; (global-set-key (kbd "C-M-k") 'windmove-up)
;; (global-set-key (kbd "C-M-j") 'windmove-down)
;; (global-set-key (kbd "C-M-l") 'windmove-right)
;; (global-set-key (kbd "C-M-h") 'windmove-left)

;---------------------------------------------------------------------------
;;;; Find File at Point
(ffap-bindings)
;; TODO: PATH設定

;---------------------------------------------------------------------------
;; ido
; (ido-mode file)
; (ido-everywhere t)

;; View
(setq view-read-only t)
;; 自動でView Mode
(setq auto-mode-alist
      (append '(
                ("Changelog.*" . view-mode)
                ("\\.log$"     . view-mode)
                ("\\.aux$"     . view-mode)
                ("\\.bbl$"     . view-mode)
                ("\\.blg$"     . view-mode)
                ) auto-mode-alist))

;---------------------------------------------------------------------------
;; CUIでMouseを使う
(when (null window-system)
  (xterm-mouse-mode t)
  ; (mouse-wheel-mode t)
  ; (setq mouse-wheel-follow-mouse t)
  )
