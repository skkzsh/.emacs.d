;;;; helm
(require 'helm-config)
(helm-mode 1)
(helm-migemo-mode 1)

;;; Keybind
;; helm-command-prefix-key
(define-key helm-map [backspace] 'delete-backward-char)
(define-key helm-find-files-map [backspace] 'delete-backward-char)
(define-key helm-find-files-map [tab] 'helm-execute-persistent-action)
;; (define-key helm-read-file-map [tab] 'helm-execute-persistent-action)

(global-set-key (kbd "M-x") 'helm-M-x)
;; (global-set-key (kbd "") ‘helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
;; (global-set-key (kbd "C-;") 'helm-for-files)
(global-set-key (kbd "C-x C-r") 'helm-recentf)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
;; (global-set-key (kbd "") 'helm-resume)
;; (global-set-key (kbd "M-o") 'helm-occur)
;; (global-set-key (kbd "") 'helm-ack)
;; (global-set-key (kbd "") 'helm-ag)

(define-key helm-map (kbd "C-h") 'delete-backward-char)

;; (setq helm-enable-shortcuts 'alphabet)

;; (setq helm-split-window-in-side-p t)
;; (setq helm-split-window-default-side 'other)
