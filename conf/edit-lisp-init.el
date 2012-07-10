;;;; yasnippet
(add-to-list 'load-path "~/.emacs.d/public_repos/yasnippet")
(require 'yasnippet)
; (setq yas/root-directory '(
;                             "~/.emacs.d/public_repos/yasnippet-org-mode"
;                             "~/.emacs.d/conf/snippets"
;                             ))
(yas/initialize)
; (mapc 'yas/load-directory yas/root-directory)
(yas/load-directory "~/.emacs.d/conf/snippets")

(setq yas/prompt-functions '(yas/dropdown-prompt))

;;;; Auto Complete
(require 'auto-complete-config)
(global-auto-complete-mode t)
; (add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-1.4/dict")
; (ac-config-default)

; (define-key ac-mode-map (kbd "M-TAB") 'auto-complete)
; (global-set-key "\M-/" 'ac-start)
;; 補完ウィンドウでC-p,C-nで候補選択
; (setq ac-use-menu-map t)

;; カレントバッファ以外の補完機能は２文字目から作動させる。
;(setq ac-dabbrev-all-min-count 2)

;; ***-mode にも対応
(setq ac-modes
      (append ac-modes
              (list
               'yatex-mode
               ;; 'org-mode
               )))

;; Lisp

;; LaTeX
; (add-to-list 'load-path "~/.emacs.d/public_repos/auto-complete-latex-light")
; (require 'auto-complete-latex-light)
; (setq ac-ll-dict-directory "~/.emacs.d/public_repos/auto-complete-latex-light/ac-ll-dict")

;;;; Junk File
(require 'open-junk-file)
(setq open-junk-file-format "~/.junk/%Y-%m%d-%H%M.")
