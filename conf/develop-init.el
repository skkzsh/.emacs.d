;;;; Development Settings
;;---------------------------------------------------------------------------
;;;; Magit
;; (require 'magit)

;;---------------------------------------------------------------------------
;;;; Git gutter

;; (add-to-list 'load-path "~/.emacs.d/bundle/emacs-git-gutter")
;; (require 'git-gutter)
;; (global-git-gutter-mode t)
;; (setq git-gutter:modified-sign "  ")
;; (setq git-gutter:added-sign "++")
;; (setq git-gutter:deleted-sign "--")
;; (set-face-background 'git-gutter:added    "green")
;; (set-face-background 'git-gutter:deleted  "yellow")
;; (set-face-background 'git-gutter:modified "magenta")
;; (setq git-gutter:window-width 2)

;; (add-to-list 'load-path "~/.emacs.d/bundle/emacs-git-gutter-fringe")
;; (require 'git-gutter-fringe)

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
(require 'yaml-mode)
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
