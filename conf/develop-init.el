;;;; Development Settings
;---------------------------------------------------------------------------
;;;; Magit
(add-to-list 'load-path "~/.emacs.d/public_repos/magit")
(require 'magit)

;---------------------------------------------------------------------------
;;;; YAML
(when (require 'yaml-mode nil t)
  (add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
  )

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
(load "~/.emacs.d/public_repos/emacsfiles/blockdiag-mode.el")

;---------------------------------------------------------------------------
;;;; CSV
;; TODO
(add-to-list 'auto-mode-alist
             '("\\.[Cc][Ss][Vv]\\'" . csv-mode))
(autoload 'csv-mode "csv-mode"
  "Major mode for editing comma-separated value files." t)
