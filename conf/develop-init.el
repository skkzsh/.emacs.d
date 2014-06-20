;;;; Development Settings
;---------------------------------------------------------------------------
;;;; Magit
(add-to-list 'load-path "~/.emacs.d/bundle/magit_maint")
(require 'magit)

;---------------------------------------------------------------------------
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

;---------------------------------------------------------------------------
;;;; YAML
(add-to-list 'load-path "~/.emacs.d/bundle/yaml-mode")
(require 'yaml-mode nil t)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

;---------------------------------------------------------------------------
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
(load "~/.emacs.d/bundle/emacsfiles/blockdiag-mode.el")

;---------------------------------------------------------------------------
;;;; CSV
;; TODO
(add-to-list 'auto-mode-alist
             '("\\.[Cc][Ss][Vv]\\'" . csv-mode))
(autoload 'csv-mode "csv-mode"
  "Major mode for editing comma-separated value files." t)
