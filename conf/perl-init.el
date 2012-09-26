;;;; Perl
;; perl-modeでなくcperl-mode
(defalias 'perl-mode 'cperl-mode)

;; perlplus.el
;; M-oで補完
;; (add-hook 'cperl-mode-hook
;;           (lambda ()
;;             (require 'perlplus)
;;             (local-set-key "\M-o" 'perlplus-complete-symbol)
;;             (perlplus-setup)
;;             ))

;; perl-completion.el
;; (add-hook 'cperl-mode-hook
;;           (lambda ()
;;             (setq plcmp-use-keymap nil) ; requireより前の段階で設定する
;;             (require 'perl-completion)
;;             (add-to-list 'ac-sources 'ac-source-perl-completion)
;;             (perl-completion-mode t)
;;             ;; plcmp-mode-mapにコマンドを割り当てていく
;;             (define-key plcmp-mode-map (kbd "C-M-i") 'plcmp-cmd-smart-complete)
;;             (define-key plcmp-mode-map (kbd "C-c m") 'plcmp-cmd-menu)
;;             (define-key plcmp-mode-map (kbd "C-c s") 'plcmp-cmd-smart-complete)
;;             (define-key plcmp-mode-map (kbd "C-c d") 'plcmp-cmd-show-doc)
;;             (define-key plcmp-mode-map (kbd "C-c p") 'plcmp-cmd-show-doc-at-point)
;;             (define-key plcmp-mode-map (kbd "C-c c") 'plcmp-cmd-clear-all-cashes)
;;             ))

;; (add-hook  'cperl-mode-hook
;;            (lambda ()
;;              (when (require 'auto-complete nil t)
;;                ;; no error whatever auto-complete.el is not installed.
;;                (auto-complete-mode t)
;;                (make-variable-buffer-local 'ac-sources)
;;                (setq ac-sources
;;                      '(ac-source-perl-completion)))
;;              ))
