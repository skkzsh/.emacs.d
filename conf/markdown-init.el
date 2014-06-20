;;;; Markdown / GFM
;---------------------------------------------------------------------------
(add-to-list 'load-path "~/.emacs.d/bundle/markdown-mode")
(autoload 'gfm-mode "markdown-mode.el"
  "Major mode for editing Markdonw files" t)
;; (autoload 'markdown-mode "markdown-mode.el"
;;   "Major mode for editing Markdonw files" t)

;---------------------------------------------------------------------------
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

;---------------------------------------------------------------------------
;;; Markdown Command
(cond
 ((executable-find "rdiscount")
  (setq markdown-command "rdiscount"))
 ((executable-find "multimarkdown")
  (setq markdown-command "multimarkdown"))
 ((executable-find "MultiMarkdown.pl")
  (setq markdown-command "MultiMarkdown.pl"))
 ;; ((executable-find "maruku")
 ;;  (setq markdown-command "maruku"))
 ((executable-find "bluecloth")
  (setq markdown-command "bluecloth"))
 ((executable-find "markdown")
  (setq markdown-command "markdown"))
 ((executable-find "Markdown.pl")
  (setq markdown-command "Markdown.pl"))
 ((executable-find "pandoc")
  (setq markdown-command "pandoc"))
 ((executable-find "redcarpet")
  (setq markdown-command "redcarpet"))
 ((executable-find "kramdown")
  (setq markdown-command "kramdown"))
 ;; ((executable-find "bluefeather")
 ;;  (setq markdown-command "bluefeather"))
 ((executable-find "mdown")
  (setq markdown-command "mdown"))
 )

(cond
 ((file-directory-p "/Applications/Marked.app")
  (setq markdown-open-command "/Applications/Marked.app/Contents/Resources/mark")
  )
  )

;---------------------------------------------------------------------------
;; (setq markdown-css-path "")
;; (setq markdown-xhtml-header-content "")

;---------------------------------------------------------------------------
(add-hook 'markdown-mode-hook
           (lambda()
             (define-key markdown-mode-map (kbd "C-i") 'markdown-cycle)
             (define-key markdown-mode-map (kbd "C-S-i") 'markdown-shifttab)
             ;; (hide-sublevels 2)
             ))
;; (add-hook 'markdown-mode-hook
;;           '(lambda()
;;              (markdown-custom) ;; カスタム設定を使う場合
;;              (define-key markdown-mode-map [(shift tab)] 'markdown-shifttab)
;;              ))

;---------------------------------------------------------------------------
;; HTMLが存在すれば, 保存後にExport
;; TODO
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
