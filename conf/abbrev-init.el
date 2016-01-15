;;;; abbrev
;; 保存先
; (setq abbrev-file-name "~/.abbrev_defs")
;; 保存
; (setq save-abbrevs t)
;; 略語定義されたら黙って保存
; (setq save-abbrevs 'silently)
;; 起動時に保存した略称を読み込む
; (quietly-read-abbrev-file)
;; Defaultでabbrev mode
(setq default-abbrev-mode t)
;; Keybind
; (global-set-key (kbd "C-x") 'just-one-space)
; (global-set-key (kbd "M-SPC") 'dabbrev-expand)
; (global-set-key (kbd "M-/") 'expand-abbrev)
; (eval-after-load "abbrev" '(global-set-key "\M-/" 'expand-abbrev))
;; 拡張
; (require 'expand)
;; 補完
; (load "abbrev-completion)
; Sort
; (require 'abbrev-sort)

;;;; dabbrev
;; Japanese
; (load "dabbrev-ja")
;; Highlight
; (require 'dabbrev-highlight)
;; 補完を自動表示
; (require 'dabbrev-hover)
; (dabbrev-hover-install t t) ;; TABで補完決定＆補完選択

;; パスや URL を補完
; (load "ac-mode")
; (setq ac-mode-exception '(dired-mode hex-mode))
; (add-hook 'find-file-hooks 'ac-mode-without-exception)
; (setq ac-mode-goto-end-of-word t)
;; 入力回数に応じて単語を補完
; (require 'pabbrev)
