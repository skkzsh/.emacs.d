;;;; Markdown / GFM
;---------------------------------------------------------------------------
;; (autoload 'markdown-mode "markdown-mode.el"
;;   "Major mode for editing Markdonw files" t)
(autoload 'gfm-mode "markdown-mode.el"
  "Major mode for editing GitHub Flavored Markdonw files" t)
;; (autoload 'markdown-mode "markdown-mode"
;;           "Major mode for editing Markdown files" t)
;; (autoload 'gfm-mode "gfm-mode"
;;           "Major mode for editing GitHub Flavored Markdown files" t)

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
                ("README\\.md$" . gfm-mode)
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

(cond

 ((eq system-type 'windows-nt)

  (defun markdown-export-and-preview-with-ie ()
    " with IE" ; XXX
    (interactive)

    (let ((browse-url-browser-function))

      (setq browse-url-browser-function
            (lambda (url args)
              (async-shell-command
               (format "\"C:/Program Files/Internet Explorer/iexplore\" %s" url))
              )
            )

      (markdown-export-and-preview)
      )
    )

  )

 )

;---------------------------------------------------------------------------
;; (setq markdown-css-path "")
;; (setq markdown-xhtml-header-content "")

;---------------------------------------------------------------------------
(add-hook 'markdown-mode-hook
           (lambda()
             ;; (define-key markdown-mode-map [tab] 'markdown-cycle)
             (define-key markdown-mode-map [shift tab] 'markdown-shifttab)
             (define-key markdown-mode-map (kbd "C-S-i") 'markdown-shifttab)
             ;; (hide-sublevels 2)

             (define-key markdown-mode-map (kbd "C-S-k") 'markdown-move-up)
             (define-key markdown-mode-map (kbd "C-S-j") 'markdown-move-down)
             (define-key markdown-mode-map (kbd "C-S-l") 'markdown-move-left)
             (define-key markdown-mode-map (kbd "C-S-h") 'markdown-move-right)

             (define-key markdown-mode-map (kbd "C-S-p") 'markdown-table-delete-row)
             (define-key markdown-mode-map (kbd "C-S-n") 'markdown-table-insert-row)
             (define-key markdown-mode-map (kbd "C-S-b") 'markdown-table-delete-column)
             (define-key markdown-mode-map (kbd "C-S-f") 'markdown-table-insert-column)
             ))

;; (add-hook 'markdown-mode-hook
;;           '(lambda()
;;              (markdown-custom) ;; カスタム設定を使う場合
;;              (define-key markdown-mode-map [shift tab] 'markdown-shifttab)
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
