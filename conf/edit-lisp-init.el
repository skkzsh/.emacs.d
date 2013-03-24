;;;; Edit Settings by Extensions
;---------------------------------------------------------------------------
;;;; yasnippet
(add-to-list 'load-path "~/.emacs.d/public_repos/yasnippet")
(require 'yasnippet)
(setq yas-snippet-dirs '(
                         "~/.emacs.d/conf/snippets"
                         "~/.emacs.d/public_repos/yasnippet/snippets"
                         "~/.emacs.d/public_repos/yasnippet/extras/imported"
                         ))
(yas-global-mode 1)

; (setq yas/root-directory '(
;                             "~/.emacs.d/public_repos/yasnippet-org-mode"
;                             "~/.emacs.d/conf/snippets"
;                             ))
; (yas/initialize)
; (mapc 'yas/load-directory yas/root-directory)
; (yas/load-directory "~/.emacs.d/conf/snippets")

(setq yas/prompt-functions '(yas/dropdown-prompt))

;---------------------------------------------------------------------------
;;;; Auto Complete
(require 'auto-complete-config)
(global-auto-complete-mode t)
; (add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-1.4/dict")
; (ac-config-default)

;; Sources
;; (push 'ac-source-filename ac-sources)
;; or
;; (setq ac-sources '(
;;                    ac-source-filename
;;                    ac-source-words-in-buffer
;;                    ac-source-words-in-same-mode-buffers
;;                    ))

; (define-key ac-mode-map (kbd "M-TAB") 'auto-complete)
(global-set-key "\M-/" 'ac-start)
;; 補完ウィンドウでC-p,C-nで候補選択
(setq ac-use-menu-map t)

;; カレントバッファ以外の補完機能は２文字目から作動させる。
;(setq ac-dabbrev-all-min-count 2)

;; ***-mode にも対応
(setq ac-modes
      (append ac-modes
              (list
               'yatex-mode
               'org-mode
               )))

;; Lisp

;; LaTeX
; (add-to-list 'load-path "~/.emacs.d/public_repos/auto-complete-latex-light")
; (require 'auto-complete-latex-light)
; (setq ac-ll-dict-directory "~/.emacs.d/public_repos/auto-complete-latex-light/ac-ll-dict")

;;;; Junk File
(when (require 'open-junk-file nil t)
  (setq open-junk-file-format "~/.junk/%Y-%m%d-%H%M.")
  )
;; for Dropbox
;; (setq open-junk-file-format "~/Dropbox/.junk/%Y-%m%d-%H%M.")
