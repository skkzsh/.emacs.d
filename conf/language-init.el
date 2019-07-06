;;;; Programming Languages Settings
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

;;---------------------------------------------------------------------------
;;;; Ruby, Perl, Python
;; (when (require 'rcodetools nil t)
;;   (add-hook 'ruby-mode-hook
;;             (lambda ()
;;               (define-key ruby-mode-map (kbd "C-c e") 'xmp)
;;               )))

;;---------------------------------------------------------------------------
;;;; Lisp
(require 'lispxmp)
(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (define-key emacs-lisp-mode-map (kbd "C-c e") 'lispxmp)
            ))
(add-hook 'common-lisp-mode-hook
          (lambda ()
            (define-key common-lisp-mode-map (kbd "C-c e") 'lispxmp)
            ))
;; (add-hook 'slime-mode-hook
;;           (lambda ()
;;             (define-key slime-mode-map (kbd "C-c e") 'lispxmp)
;;             ))
(add-hook 'lisp-mode-hook
          (lambda ()
            (define-key lisp-mode-map (kbd "C-c e") 'lispxmp)
            ))

;; Common Lisp
;; (add-to-list 'auto-mode-alist '("\\.cl$" . common-lisp-mode))

(if (file-readable-p "~/.roswell/helper.el")
    (load (expand-file-name "~/.roswell/helper.el"))
  )

;;---------------------------------------------------------------------------
;;;; Zsh
(add-to-list 'auto-mode-alist '("\\.zsh$" . sh-mode))
;; (add-to-list 'auto-mode-alist '("\\.zsh$" . shell-script-mode))

;;;; PlantUML
(when (executable-find "plantuml")
  (add-to-list 'auto-mode-alist '("\\.pu$" . plantuml-mode))
  )
;; (setq plantuml-output-type "utxt") ; 有効にならない

;;---------------------------------------------------------------------------
;;;; PowerShell
;; TODO hook encoding
;; (autoload 'powershell-mode "powershell-mode" "Mode PowerShell" t)
;; (add-to-list 'auto-mode-alist '("\\.\\(ps1\\|psd1\\|psm1\\)$" . powershell-mode))

;;;; Batch
;; TODO hook encoding
;; (require 'batch-mode)

;;;; Visual Basic
;; (autoload 'visual-basic-mode "visual-basic-mode" "Visual Basic mode." t)
;; (setq auto-mode-alist
;;     (append '(
;;               ("\\.vb$"  . visual-basic-mode)
;;               ("\\.vbs$" . visual-basic-mode)
;;               ("\\.bas$" . visual-basic-mode)
;;               ("\\.frm$" . visual-basic-mode)
;;               ;; ("\\.cls$" . visual-basic-mode)
;;               )
;;               auto-mode-alist))

;;---------------------------------------------------------------------------
;;;; Gnuplot
;; (add-to-list 'auto-mode-alist
;;     '("\\.\\(gp\\|plt\\)$" . gnuplot-mode))

;;;; MATLAB
;; (add-to-list 'auto-mode-alist '("\\.m$" . octave-mode))
