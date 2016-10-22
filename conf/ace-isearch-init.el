;---------------------------------------------------------------------------
;;;; helm-swoop
(require 'helm-swoop)
;; キーバインドはお好みで
(global-set-key "\M-o" 'helm-swoop)
;; (global-set-key "\M-O" 'helm-multi-swoop-all)

;; isearch実行中にhelm-swoopに移行
;; (define-key isearch-mode-map "\M-i" 'helm-swoop-from-isearch)
;; helm-swoop実行中にhelm-multi-swoop-allに移行
;; (define-key helm-swoop-map "\M-i" 'helm-multi-swoop-all-from-helm-swoop)

;; (setq helm-swoop-split-with-multiple-windows t)
;; 'split-window-vertically or 'split-window-horizontally
(setq helm-swoop-split-direction 'split-window-horizontally)

;---------------------------------------------------------------------------
;;;; ace-jump
(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
  t)
(global-set-key (kbd "C-c j") 'ace-jump-mode)
;; (key-chord-define-global "jf" 'ace-jump-mode)

;; (autoload
;;   'ace-jump-mode-pop-mark
;;   "ace-jump-mode"
;;   "Ace jump back:-)"
;;   t)
;; (eval-after-load "ace-jump-mode"
;;   '(ace-jump-mode-enable-mark-sync))
;; (define-key global-map (kbd "C-x SPC") 'ace-jump-mode-pop-mark)

;---------------------------------------------------------------------------
;;;; TODO
;;;; avy
(require 'avy)
;; (avy-setup-default)
;; (global-set-key (kbd "C-:") 'avy-goto-char)
;; (global-set-key (kbd "C-'") 'avy-goto-char-2)
;; (global-set-key (kbd "M-g f") 'avy-goto-line)
;; (global-set-key (kbd "M-g w") 'avy-goto-word-1)
;; (global-set-key (kbd "M-g e") 'avy-goto-word-0)

;---------------------------------------------------------------------------
;;;; ace-isearch
(require 'ace-isearch)
;; (ace-isearch-mode +1)
(global-ace-isearch-mode +1)

(define-key helm-swoop-map "\C-s" 'helm-next-line)
(define-key helm-swoop-map "\C-r" 'helm-previous-line)
(define-key isearch-mode-map "\M-o" 'helm-swoop-from-isearch)
;; (define-key isearch-mode-map "\M-o" 'helm-multi-swoop-all-from-isearch)

(setq ace-isearch-funtion-from-isearch nil)
; (ace-isearch-set-ace-jump-after-isearch-exit t)
