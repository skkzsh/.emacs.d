;;;; Edit Settings by Extensions
;---------------------------------------------------------------------------
;;;; yasnippet
(require 'yasnippet)
(setq yas-snippet-dirs '(
                         "~/.emacs.d/conf/snippets"
                         "~/.emacs.d/el-get/yasnippet/snippets"
                         ))
(yas-global-mode 1)

;; (setq yas/root-directory '(
;;                             "~/.emacs.d/conf/snippets"
;;                             ))
;; (yas/initialize)
;; (mapc 'yas/load-directory yas/root-directory)
;; (yas/load-directory "~/.emacs.d/conf/snippets")

(setq yas/prompt-functions '(yas/dropdown-prompt))

;---------------------------------------------------------------------------
;;;; Auto Complete
;; TODO
(require 'auto-complete-config)
(global-auto-complete-mode t)
;; (add-to-list 'ac-dictionary-directories "~/.emacs.d/el-get/auto-complete/dict")
;; (ac-config-default)

;; Sources
;; (push 'ac-source-filename ac-sources)
;; or
;; (setq ac-sources '(
;;                    ac-source-filename
;;                    ac-source-words-in-buffer
;;                    ac-source-words-in-same-mode-buffers
;;                    ))

;; (define-key ac-mode-map (kbd "M-tab") 'auto-complete)
(global-set-key "\M-/" 'ac-start)
;; 補完ウィンドウでC-p,C-nで候補選択
(setq ac-use-menu-map t)

;; カレントバッファ以外の補完機能は２文字目から作動させる。
;;(setq ac-dabbrev-all-min-count 2)

;; ***-mode にも対応
(setq ac-modes
      (append ac-modes
              (list
               'yatex-mode
               'org-mode
               )))

;;;; helm
(require 'ac-helm)
(global-set-key (kbd "C-:") 'ac-complete-with-helm)
(define-key ac-complete-mode-map (kbd "C-:") 'ac-complete-with-helm)

;---------------------------------------------------------------------------
;; (require 'expand-region)
;; (global-set-key (kbd "C-@") 'er/expand-region)
;; (global-set-key (kbd "C-M-@") 'er/contract-region)

;---------------------------------------------------------------------------
;;;; 矩形選択
;; TODO
;; (require 'sense-region)
;; (sense-region-on)

;---------------------------------------------------------------------------
;;;; Lisp

;---------------------------------------------------------------------------
;;;; LaTeX
;; (add-to-list 'load-path "~/.emacs.d/bundle/auto-complete-latex-light")
;; (require 'auto-complete-latex-light)
;; (setq ac-ll-dict-directory "~/.emacs.d/bundle/auto-complete-latex-light/ac-ll-dict")
