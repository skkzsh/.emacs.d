;;;; Evil
;;---------------------------------------------------------------------------
(evil-mode 1)

;;; Keyboard
(define-key evil-normal-state-map ";" 'ace-jump-mode)
(define-key evil-normal-state-map "\M-k" 'er/expand-region)
(define-key evil-normal-state-map "\M-j" 'er/contract-region)

;;; Cursor
(setq evil-default-cursor 'bar
      evil-normal-state-cursor 'box
      evil-insert-state-cursor 'bar
      )

;; (add-hook 'evil-normal-state-entry-hook)

;; (add-hook 'org-mode-hook
;;           (evil-exit-emacs-state)
;;           )
;; (add-hook 'dir-mode-hook
;;           (evil-exit-emacs-state)
;;           )

;;---------------------------------------------------------------------------
(global-evil-leader-mode 1)
(global-evil-matchit-mode 1)
(global-evil-visualstar-mode 1)

(require 'evil-numbers)
(define-key evil-normal-state-map "+" #'evil-numbers/inc-at-pt)
(define-key evil-normal-state-map "-" #'evil-numbers/dec-at-pt)

(require 'powerline-evil)

(require 'evil-org)
(evil-define-key 'normal evil-org-mode-map
  (kbd "SPC") 'org-cycle
  (kbd "TAB") 'org-cycle
  "zi" 'org-cycle
  "zI" 'org-global-cycle

  (kbd "S-SPC") 'org-shifttab

  "zj" 'org-next-visible-heading
  "zk" 'org-previous-visible-heading
  "zJ" 'org-forward-heading-same-level
  "zK" 'org-backward-heading-same-level

  "gx" 'org-open-at-point

  ;; "H" 'org-shiftleft
  ;; "J" 'org-shiftdown
  ;; "K" 'org-shiftup
  ;; "L" 'org-shiftright
  )

;; (require 'evil-magit)
