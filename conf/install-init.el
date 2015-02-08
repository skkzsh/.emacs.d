;;;; Install Settings
;---------------------------------------------------------------------------
;;;; ELPA

;; (when
;;     (load
;;      (expand-file-name "~/.emacs.d/elpa/package.el"))
(when (>= emacs-major-version 24)

  (setq package-archives '(
                           ("ELPA" . "http://tromey.com/elpa/")
                           ("gnu" . "http://elpa.gnu.org/packages/")
                           ("marmalade" . "http://marmalade-repo.org/packages/")
                           ))

  (package-initialize)
  )

;---------------------------------------------------------------------------
;;;; el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

;;; Install el-get
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
       )
      (goto-char (point-max))
      (eval-print-last-sexp)
      ))

;;; Auto Update
(el-get 'sync)
(el-get 'sync '(
                ac-anything
                auto-install
                batch-mode
                color-moccur
                ; gnuplot-mode
                goto-chg
                graphviz-dot-mode
                htmlize
                key-chord
                lispxmp
                menu-tree
                open-junk-file
                point-undo
                PowerShell-Mode
                redo+
                recentf-ext
                summarye
                visual-basic-mode
                yahoo-weather
                ))

;;; Define recipe
;; (setq el-get-sources
;;       '(
;;         (
;;          :name
;;                :type github
;;                :pkgname ""
;;                ; :branch ""
;;                )
;;         ))

;---------------------------------------------------------------------------
;;;; Cask
;; (require 'cask "~/.cask/cask.el")
;; (cask-initialize)

;---------------------------------------------------------------------------
;;;; auto-install
;; Proxy 環境のWindowsでは?
;; (unless (eq system-type 'windows-nt)
(when (require 'auto-install nil t)
  (setq auto-install-directory "~/.emacs.d/auto-install")
  ;;  (auto-install-update-emacswiki-package-name t)
  ;;  (setq url-proxy-services '(("http" . "proxy:8080")))
  (auto-install-compatibility-setup) ; 互換性
  ;; )

  ;; ediffを1Windowで実行
  (setq ediff-window-setup-function 'ediff-setup-windows-plain)
  )
