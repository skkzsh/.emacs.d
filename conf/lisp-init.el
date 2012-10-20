;;;; sequential-command
;; (require 'sequential-command-config)
;; (sequential-command-setup-keys)


;;;; Key Chord
;; (key-chord-mode t)
;; (setq key-chord-two-keys-delay 0.05)


;;;; Vi


;;;; APEL
(when (or
        (eq system-type 'darwin)
        (eq system-type 'windows-nt)
        )
  (add-to-list 'load-path "~/.emacs.d/public_repos/apel")
  )
