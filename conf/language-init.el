;;;; Compile
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

;;;; PowerShell
(autoload 'powershell-mode "powershell-mode" "Mode PowerShell" t)
(push '("\\.ps[12]?$" . powershell-mode) auto-mode-alist)

;;;; Batch
(when (require 'batch-mode nil t)
  )

;;;; Gnuplot
(setq auto-mode-alist
      (append '(
                ("\\.gp$"  . gnuplot-mode)
                ("\\.plt$" . gnuplot-mode)
                ) auto-mode-alist))

;;;; MATLAB
(add-to-list 'auto-mode-alist '("\\.m$" . octave-mode))
