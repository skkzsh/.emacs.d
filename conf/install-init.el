;;;; ELPA
;; Emacs22では?
; (when
;    (load
;  	(expand-file-name "~/.emacs.d/elpa/package.el"))
(when (>= emacs-major-version 23)
  (require 'package)
  (setq package-archives '(
                           ("ELPA" . "http://tromey.com/elpa/")
                           ("gnu" . "http://elpa.gnu.org/packages/")
                           ("marmalade" . "http://marmalade-repo.org/packages/")
                           ))
  (package-initialize)
  )

;;;; auto-install
;; Proxy 環境のWindowsでは?
(unless (eq system-type 'windows-nt)
  (require 'auto-install)
  (setq auto-install-directory "~/.emacs.d/auto-install/")
  ;  (auto-install-update-emacswiki-package-name t)
  ;  (setq url-proxy-services '(("http" . "proxy:8080")))
  (auto-install-compatibility-setup) ; 互換性
  )
