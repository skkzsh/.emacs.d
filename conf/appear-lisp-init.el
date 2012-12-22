;;;;; Color Theme
(require 'color-theme)
(color-theme-initialize)

(when window-system
  ; (add-to-list 'load-path "~/.emacs.d/lisp/themes")
  ; (require 'zenburn)
  (color-theme-hrehf-dark)
  ; (color-theme-aalto-light)
  ; (color-theme-ld-dark)
  ; (color-theme-clarity)

  ;; 行数を表示 linum/wb-line-number/setnu
  (when (>= emacs-major-version 23)
    (global-linum-mode)
    )
  )


;;;; fold-dwim / hideshow
; (require 'hideshow)
(require 'fold-dwim)
; (autoload 'fold-dwim-toggle
;         "fold-dwim"
;         "try to show any hidden text at the cursor" t)
; (autoload 'fold-dwim-hide-all
;         "fold-dwim" "hide all folds in the buffer" t)
; (autoload 'fold-dwim-show-all
;         "fold-dwim" "show all folds in the buffer" t)
;; 機能を利用するMajor Mode一覧
(let ((hook))
  (dolist (hook '(
                  emacs-lisp-mode-hook
                  c-mode-common-hook
                  python-mode-hook
                  cperl-mode-hook
                  ruby-mode-hook
                  shell-script-mode-hook
                  )) (add-hook hook 'hs-minor-mode)))
;; Key Bind
; (key-chord-define-global "vi" 'fold-dwim-toggle)
; (key-chord-define-global "vo" 'fold-dwim-show-all)
; (key-chord-define-global "vc" 'fold-dwim-hide-all)
