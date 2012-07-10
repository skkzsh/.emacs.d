;;;; コンパイル
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


;;;; Magit
(add-to-list 'load-path "~/.emacs.d/public_repos/magit")
(require 'magit)


;;;; C
;;;; C++
;;;; Python

;;;; Markdown / GFM
(add-to-list 'load-path "~/.emacs.d/public_repos/markdown-mode")
(autoload 'gfm-mode "markdown-mode.el"
          "Major mode for editing Markdonw files" t)
; (autoload 'markdown-mode "markdown-mode.el"
; 		  "Major mode for editing Markdonw files" t)
(setq auto-mode-alist
      (append '(
                ("\\.md$"       . gfm-mode)
                ("\\.mkd$"      . gfm-mode)
                ("\\.mdt$"      . gfm-mode)
                ("\\.mkdn$"     . gfm-mode)
                ("\\.mdwn$"     . gfm-mode)
                ("\\.mark$"     . gfm-mode)
                ("\\.mdown$"    . gfm-mode)
                ("\\.markdown$" . gfm-mode)
                ) auto-mode-alist))

;;;; Lisp
(require 'lispxmp)
(define-key emacs-lisp-mode-map "\C-ce" 'lispxmp)

;;;; Gnuplot
(setq auto-mode-alist
      (append '(
                ("\\.gp$"  . gnuplot-mode)
                ("\\.plt$" . gnuplot-mode)
                ) auto-mode-alist))

;;;; MATLAB
(add-to-list 'auto-mode-alist '("\\.m$" . octave-mode))

;;;; Batch
(require 'batch-mode)
