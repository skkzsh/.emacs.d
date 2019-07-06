;;;; Basic Setttings by Extensions
;;---------------------------------------------------------------------------
;;;; sequential-command
;; (require 'sequential-command-config)
;; (sequential-command-setup-keys)

;;---------------------------------------------------------------------------
;;;; Key Chord
;; (key-chord-mode t)
;; (setq key-chord-two-keys-delay 0.05)

;;---------------------------------------------------------------------------
;;;; Spell
(setq ispell-program-name "aspell")
; (setq ispell-grep-command "grep")
; (eval-after-load "ispell"
;                  '(add-to-list 'ispell-skip-region-alist '("[^\000-\377]")))
;; flyspell

;;---------------------------------------------------------------------------
;;;; APEL
(setq load-path
      (append '(
                "~/.emacs.d/usr/share/emacs/site-lisp/apel"
                "~/.emacs.d/usr/share/emacs/site-lisp/emu"
                )
              load-path))

