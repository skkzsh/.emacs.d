;;;; Development Settings
;;---------------------------------------------------------------------------
;;;; Compile
;; TODO
(setq compilation-window-height 12) ;; デフォルトは画面の下半分
;; mode-compile.el
; (autoload 'mode-compile "mode-compile"
;   "Command to compile current buffer file based on the major mode" t)
; (global-set-key "\C-c c" 'mode-compile)
; (autoload 'mode-compile-kill "mode-compile"
;   "Command to kill a compilation launched by `mode-compile'" t)
; (global-set-key "\C-c k" 'mode-compile-kill)

;; smart-compile.el
; (require 'smart-compile)
; (global-set-key "\C-c c" 'smart-compile)


;; flycheck
;; (global-flycheck-mode)
;; (add-hook 'after-init-hook #'global-flycheck-mode)
(dolist (hook '(
                ;; yaml-mode-hook
                xml-mode-hook
                html-mode-hook
                css-mode-hook
                js-mode-hook
                ;; markdown-mode-hook
                ;; sh-mode-hook
                sql-mode-hook
                ))
  (add-hook hook 'flycheck-mode)
  )

;; (with-eval-after-load 'flycheck
;;   (flycheck-pos-tip-mode))
;; (with-eval-after-load 'flycheck
;;   (add-hook 'flycheck-mode-hook #'flycheck-inline-mode))
;; (with-eval-after-load 'flycheck
;;   '(add-hook 'flycheck-mode-hook 'flycheck-popup-tip-mode))

;;---------------------------------------------------------------------------
;;;; Magit
;; (require 'magit)
;; (setq magit-diff-refine-hunk 'all)

;;---------------------------------------------------------------------------
;;;; Git gutter

;; (require 'git-gutter)
(require 'git-gutter-fringe)
;; (require 'git-gutter-fringe+)

(global-git-gutter-mode t)
;; (git-gutter:linum-setup)

;; (global-git-gutter+-mode)

;; (setq git-gutter:modified-sign "  ")
;; (setq git-gutter:added-sign "++")
;; (setq git-gutter:deleted-sign "--")

;; (set-face-foreground 'git-gutter:modified "yellow")
;; (set-face-foreground 'git-gutter:added    "blue")
;; (set-face-foreground 'git-gutter:deleted  "white")

(set-face-foreground 'git-gutter-fr:modified "yellow")
(set-face-foreground 'git-gutter-fr:added    "blue")
(set-face-foreground 'git-gutter-fr:deleted  "white")

;; (setq git-gutter:window-width 2)

;;---------------------------------------------------------------------------
;;;; HTML

;;;; See markdown-open
(cond
 ((file-directory-p "/Applications/Marked.app")
  (setq html-open-command "/Applications/Marked.app/Contents/Resources/mark")
  )
  )

(defun html-open ()
  "Open file for the current buffer with `html-open-command'."
  (interactive)
  (if (not html-open-command)
      (error "Variable `html-open-command' must be set")
    (if (not buffer-file-name)
        (error "Must be visiting a file")
      (call-process html-open-command
                    nil nil nil buffer-file-name))))

;; (add-hook 'html-mode-hook
;;            (lambda ()
;;              (define-key html-mode-map (kbd "C-c C-c o") 'html-open)
;;              )
;;            )

;;---------------------------------------------------------------------------
;;;; Web
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-hook 'js2-mode-hook
          (lambda ()
            (setq js2-basic-offset 2)
            (setq js-switch-indent-offset 2)
            ))

;;---------------------------------------------------------------------------
;;;; YAML
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

;;---------------------------------------------------------------------------
;;;; reStructuredText
;; TODO
(setq frame-background-mode 'dark) ; 背景に合わせて (requireの前)
(require 'rst)
(add-to-list 'auto-mode-alist
             '("\\.\\(rst\\|rest\\)$" . rst-mode))

;; (add-hook 'rst-adjust-hook 'rst-toc-update)
(add-hook 'rst-mode-hook
          (lambda ()
            (case system-type
             ;;; Linux
             ;; (gnu/linux
             ;;  (setq rst-pdf-program "apvlv")
             ;;  (setq rst-slides-program "opera")
             ;;  )
             ;;; Mac
             (darwin
              (setq rst-pdf-program "open"
                    rst-slides-program "open -a Safari")
              )
             ;;; Windows
             ;; (windows-nt
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

;;---------------------------------------------------------------------------
;;;; blockdiag
;; TODO
;; (load "~/.emacs.d/el-get/emacsfiles/blockdiag-mode.el")

;;---------------------------------------------------------------------------
;;;; CSV
;; TODO
(add-to-list 'auto-mode-alist '("\\.csv$" . csv-mode))
(autoload 'csv-mode "csv-mode"
  "Major mode for editing comma-separated value files." t)
