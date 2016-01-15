;;;; Programming Languages Settings
;---------------------------------------------------------------------------
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


;---------------------------------------------------------------------------
;;;; Ruby, Perl, Python

;;;; Lisp
(require 'lispxmp)
(add-hook 'emacs-lisp-mode-hook
          (lambda()
            (define-key emacs-lisp-mode-map (kbd "C-c e") 'lispxmp)
            ))

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
(require 'batch-mode)

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
