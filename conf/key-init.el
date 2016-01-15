;;;; Key Settings
;---------------------------------------------------------------------------
;; Keybind
(global-set-key "\C-h" 'delete-backward-char)
; (global-set-key "\M-g" 'goto-line)
; (global-set-key "\M-N" 'next-error)
; (global-set-key "\M-P" 'previous-error)

;; C-k で改行を含めてCut
(setq kill-whole-line t)

;---------------------------------------------------------------------------
;; Cocoa
(when (eq system-type 'darwin)
  ;; IME toggle
  ;; TODO
  (define-key function-key-map (kbd "C-_") (kbd "C-\\"))
  ;; (global-set-key (kbd "C-_") (kbd "C-\\"))
  ;; (global-set-key "\C-_" 'toggle-input-method)
  ;; (global-set-key "\C-_" 'mac-toggle-input-method)
  )

(when (eq window-system 'ns)
  ;; Fullscreen by Command + Ctrl + f
  (setq ns-use-native-fullscreen nil)
  (global-set-key (kbd "<C-s-268632070>") 'toggle-frame-fullscreen)
  ;; BackSlash
  (global-set-key [165] nil)
  (global-set-key [67109029] nil)
  (global-set-key [134217893] nil)
  (global-set-key [201326757] nil)
  (define-key function-key-map [165] [?\\])
  (define-key function-key-map [67109029] [?\C-\\])
  (define-key function-key-map [134217893] [?\M-\\])
  (define-key function-key-map [201326757] [?\C-\M-\\])
  ;;
  ; (setq ns-command-modifier (quote meta))
  ; (setq ns-alternate-modifier (quote super))
  ; (setq ns-right-command-modifier (quote hyper))
  ; (setq ns-right-alternate-modifier (quote alt))
  )
