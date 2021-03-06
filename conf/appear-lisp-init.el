;;;; Appearance Settings by Extensions
;;---------------------------------------------------------------------------
;;; powerline
(powerline-evil-center-color-theme)

;;---------------------------------------------------------------------------
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
;; (add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)


;;---------------------------------------------------------------------------
;; (add-hook 'after-init-hook 'global-color-identifiers-mode)

;;---------------------------------------------------------------------------
;; (require 'diminish)
(diminish 'google-this-mode " G")
(diminish 'undo-tree-mode "UT")
(diminish 'abbrev-mode "Abv")
(diminish 'global-whitespace-mode)
;;(diminish 'evil-org-mode)

;;---------------------------------------------------------------------------
;;;; fold-dwim / hideshow
;; TODO
;; (require 'hideshow)
(require 'fold-dwim)
;; (autoload 'fold-dwim-toggle
;;         "fold-dwim"
;;         "try to show any hidden text at the cursor" t)
;; (autoload 'fold-dwim-hide-all
;;         "fold-dwim" "hide all folds in the buffer" t)
;; (autoload 'fold-dwim-show-all
;;         "fold-dwim" "show all folds in the buffer" t)
;; 機能を利用するMajor Mode一覧
(dolist (hook '(
                emacs-lisp-mode-hook
                ;; c-mode-common-hook
                python-mode-hook
                cperl-mode-hook
                ruby-mode-hook
                shell-script-mode-hook
                ))
  (add-hook hook 'hs-minor-mode)
  )

;; Key Bind
;; (key-chord-define-global "vi" 'fold-dwim-toggle)
;; (key-chord-define-global "vo" 'fold-dwim-show-all)
;; (key-chord-define-global "vc" 'fold-dwim-hide-all)

;;---------------------------------------------------------------------------
;; cursor列highlight
;; (toggle-highlight-column-when-idle 1)
;; (col-highlight-set-interval 0.2)
