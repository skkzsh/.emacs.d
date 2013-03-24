;;;; Flymake
;; TODO
(require 'flymake)

;; 全てのファイルで flymakeを有効化
; (add-hook 'find-file-hook 'flymake-find-file-hook)
;; c,c++モードでflymakeを有効化
(add-hook 'c-mode-common-hook
          '(lambda ()
             (flymake-mode t)))

;; GUIの警告は表示しない
; (setq flymake-gui-warnings-enabled nil)

;; M-p/M-n で警告/エラー行の移動
; (global-set-key "\M-p" 'flymake-goto-prev-error)
; (global-set-key "\M-n" 'flymake-goto-next-error)

;; 警告エラー行の表示
; (global-set-key "\C-cd" 'flymake-display-err-menu-for-current-line)

;; 色
; (set-face-background 'flymake-errline "red4")
; (set-face-background 'flymake-warnline "dark slate blue")
