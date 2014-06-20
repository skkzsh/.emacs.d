;;;; Programming Languages Settings
;---------------------------------------------------------------------------
;;;; Compile
;; TODO
(setq compilation-window-height 12) ;; デフォルトは画面の下半分
;; mode-compile.el
; (autoload 'mode-compile "mode-compile"
;   "Command to compile current buffer file based on the major mode" t)
; (global-set-key "\C-cc" 'mode-compile)
; (autoload 'mode-compile-kill "mode-compile"
;   "Command to kill a compilation launched by `mode-compile'" t)
; (global-set-key "\C-ck" 'mode-compile-kill)

;; smart-compile.el
; (require 'smart-compile)
; (global-set-key "\C-cc" 'smart-compile)


;---------------------------------------------------------------------------
;;;; C
;;;; C++
;;;; Python

;;;; Lisp
(when (require 'lispxmp nil t)
  (add-hook 'emacs-lisp-mode-hook
            (lambda()
              (define-key emacs-lisp-mode-map "\C-ce" 'lispxmp)
              ))
  )

;;;; Zsh
(add-to-list 'auto-mode-alist '("\\.zsh$" . sh-mode))
;; (add-to-list 'auto-mode-alist '("\\.zsh$" . shell-script-mode))

;;;; PowerShell
;; TODO hook encoding
(autoload 'powershell-mode "powershell-mode" "Mode PowerShell" t)
(push '("\\.\\(ps1\\|psd1\\|psm1\\)$" . powershell-mode) auto-mode-alist)
;; (push '("\\.ps[12]?$" . powershell-mode) auto-mode-alist)

;;;; Batch
;; TODO hook encoding
(when (require 'batch-mode nil t)
  )

;;;; Visual Basic
(autoload 'visual-basic-mode "visual-basic-mode" "Visual Basic mode." t)
(setq auto-mode-alist
    (append '(
              ("\\.vb$"  . visual-basic-mode)
              ("\\.vbs$" . visual-basic-mode)
              ("\\.bas$" . visual-basic-mode)
              ("\\.frm$" . visual-basic-mode)
              ;; ("\\.cls$" . visual-basic-mode)
              ) auto-mode-alist))

;;;; Gnuplot
(add-to-list 'auto-mode-alist
    '("\\.\\(gp\\|plt\\)$" . gnuplot-mode))

;;;; MATLAB
;; (add-to-list 'auto-mode-alist '("\\.m$" . octave-mode))
