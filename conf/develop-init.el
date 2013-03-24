;;;; Development Settings
;---------------------------------------------------------------------------
;;;; Magit
(add-to-list 'load-path "~/.emacs.d/public_repos/magit")
(require 'magit)


;;;; Markdown / GFM
(add-to-list 'load-path "~/.emacs.d/public_repos/markdown-mode")
(autoload 'gfm-mode "markdown-mode.el"
  "Major mode for editing Markdonw files" t)
;; (autoload 'markdown-mode "markdown-mode.el"
;;   "Major mode for editing Markdonw files" t)
(setq auto-mode-alist
      (append '(
                ("\\.md$"       . gfm-mode) ; github
                ("\\.mkd$"      . gfm-mode) ; Vim, github
                ("\\.mdt$"      . gfm-mode)
                ("\\.mkdn$"     . gfm-mode) ; Vim, github
                ("\\.mdwn$"     . gfm-mode)
                ("\\.mark$"     . gfm-mode)
                ("\\.mdown$"    . gfm-mode) ; Vim, github
                ("\\.markdown$" . gfm-mode) ; Vim, github
                ) auto-mode-alist))
;;; Markdown Command
(cond
 ((executable-find "mdown")
  (setq markdown-command "mdown"))
 ((executable-find "pandoc")
  (setq markdown-command "pandoc"))
 ;; ((executable-find "multimarkdown")
 ;;  (setq markdown-command "multimarkdown"))
 ;; ((executable-find "MultiMarkdown.pl")
 ;;  (setq markdown-command "MultiMarkdown.pl"))
 ;; ((executable-find "maruku")
 ;;  (setq markdown-command "maruku"))
 ((executable-find "rdiscount")
  (setq markdown-command "rdiscount"))
 ((executable-find "bluecloth")
  (setq markdown-command "bluecloth"))
 ;; ((executable-find "markdown")
 ;;  (setq markdown-command "markdown"))
 ;; ((executable-find "Markdown.pl")
 ;;  (setq markdown-command "Markdown.pl"))
 ((executable-find "redcarpet")
  (setq markdown-command "redcarpet"))
 ((executable-find "kramdown")
  (setq markdown-command "kramdown"))
 ;; ((executable-find "bluefeather")
 ;;  (setq markdown-command "bluefeather"))
 )
;; (setq markdown-css-path "")
;; (setq markdown-xhtml-header-content "")

(add-hook 'markdown-mode-hook
           (lambda()
             (define-key markdown-mode-map "\C-i" 'markdown-cycle)
             ;; (hide-sublevels 2)
             ))
;; (add-hook 'markdown-mode-hook
;;           '(lambda()
;;              (markdown-custom) ;; カスタム設定を使う場合
;;              (define-key markdown-mode-map [(shift tab)] 'markdown-shifttab)
;;              ))


;; HTMLが存在すれば, 保存後にExport
;; (add-hook 'markdown-mode-hook
;;           (lambda ()
;;              (when (executable-find markdown-command)
;;                ; (add-hook 'write-file-hooks
;;                (add-hook 'after-save-hook
;;                          (lambda ()
;;                             ; (when (file-writable-p (concat (buffer-file-name) . ".html"))
;;                               (markdown-export)
;;                               ; )
;;                             )))))


;;;; reStructuredText
;; TODO
(setq frame-background-mode 'dark) ; 背景に合わせて (requireの前)
(require 'rst)
(add-to-list 'auto-mode-alist
             '("\\.\\(rst\\|rest\\)$" . rst-mode))

;; (add-hook 'rst-adjust-hook 'rst-toc-update)
(add-hook 'rst-mode-hook
              (lambda ()
                (cond
                 ;;; Linux
                 ;; ((eq system-type 'gnu/linux)
                 ;;  (setq rst-pdf-program "apvlv")
                 ;;  (setq rst-slides-program "opera")
                 ;;  )
                 ;;; Mac
                 ((eq system-type 'darwin)
                  (setq rst-pdf-program "open")
                  (setq rst-slides-program "open -a Safari")
                  )
                 ;;; Windows
                 ;; ((eq system-type 'windows-nt)
                 ;;  (setq rst-pdf-program "")
                 ;;  (setq rst-slides-program "")
                 ;;  )
                ))
              )

;; HTMLが存在すれば, 保存後にExport
;; TODO

;; Sphinx
;; TOOD: make html & view のKeybind
;; browse-url

;---------------------------------------------------------------------------
;;;; blockdiag
;; TODO
(load "~/.emacs.d/public_repos/emacsfiles/blockdiag-mode.el")
