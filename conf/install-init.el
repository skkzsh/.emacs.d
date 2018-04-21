;;;; Install Settings
;---------------------------------------------------------------------------
;;;; ELPA

(setq package-archives '(
                         ("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")
                         ;; ("ELPA" . "http://tromey.com/elpa/")
                         ))
;; (package-initialize)

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
;; (el-get 'sync)
;; (el-get 'sync '(
;;                 auto-install
;;                 batch-mode
;;                 color-moccur
;;                 ; gnuplot-mode
;;                 goto-chg
;;                 graphviz-dot-mode
;;                 htmlize
;;                 key-chord
;;                 lispxmp
;;                 menu-tree
;;                 open-junk-file
;;                 point-undo
;;                 PowerShell-Mode
;;                 redo+
;;                 recentf-ext
;;                 summarye
;;                 visual-basic-mode
;;                 yahoo-weather
;;                 ))


(when (eq window-system 'ns)
  (el-get-bundle exec-path-from-shell)
  (require 'exec-path-from-shell)
  (exec-path-from-shell-initialize)
  )

(el-get-bundle auto-install)
;; (el-get-bundle color-moccur)
;; (el-get-bundle expand-region)
(el-get-bundle goto-chg)
(el-get-bundle htmlize)
(el-get-bundle key-chord)
(el-get-bundle lispxmp)
;; (el-get-bundle menu-tree)
(el-get-bundle open-junk-file)
(el-get-bundle point-undo)
(el-get-bundle redo+)
(el-get-bundle recentf-ext)
(el-get-bundle summarye)
;; (el-get-bundle yahoo-weather)

(el-get-bundle powerline)

(el-get-bundle diminish)

;; (el-get-bundle graphviz-dot-mode)
(el-get-bundle visual-basic-mode)
(el-get-bundle batch-mode)
(el-get-bundle PowerShell-Mode)

(el-get-bundle migemo)
;; (el-get-bundle gtags)
(el-get-bundle undohist)

(el-get-bundle smart-compile+)
(el-get-bundle emacswiki:csv-mode)
(el-get-bundle sequential-command)
(el-get-bundle sequential-command-config)
(el-get-bundle emacswiki:text-translator)
(el-get-bundle emacswiki:text-translator-vars)
(el-get-bundle emacswiki:text-translator-load)

(el-get-bundle elpa:session
  ;; repo:
  )
;; (el-get-bundle elpa:gnuplot
  ;; repo:
;;  )

;; (el-get-bundle color-theme-molokai)
;; (el-get-bundle color-theme)
;; (el-get-bundle color-theme-tango)
;; (el-get-bundle color-theme-solarized)

(el-get-bundle auto-complete)
(el-get-bundle fold-dwim)
(el-get-bundle gist)

;; (el-get-bundle calfw-gcal)

(el-get-bundle yasnippet)
(el-get-bundle rainbow-delimiters)

(el-get-bundle helm)
(el-get-bundle helm-swoop)
(el-get-bundle ac-helm)
;; (el-get-bundle helm-ag)
;; (el-get-bundle helm-migemo)
;; (el-get-bundle syohex/emacs-helm-package)

(el-get-bundle ace-jump-mode)
(el-get-bundle avy)
(el-get-bundle ace-isearch)

(el-get-bundle tomoya/search-web.el)
(el-get-bundle google-this)
(el-get-bundle yaml-mode)
(el-get-bundle knu/elscreen)
;; (el-get-bundle eschulte/org-S5)
;; (el-get-bundle maple/emacsfiles)
;; (el-get-bundle kiwanami/emacs-calfw)
;; (el-get-bundle tequilasunset/auto-complete-latex-light)

(el-get-bundle wanderlust/apel)
;; (el-get-bundle wanderlust/flim)
;; (el-get-bundle wanderlust/semi)
;; (el-get-bundle wanderlust/wanderlust)

;; (el-get-bundle pymander/evernote-mode)

(el-get-bundle markdown-mode)

;; (el-get-bundle enhanced-ruby-mode)
;; (el-get-bundle ruby-block)
;; (el-get-bundle ruby-end)

(when (executable-find "terraform")
  (el-get-bundle terraform-mode)
  )

;; (when (executable-find "ansible")
;;   (el-get-bundle elpa:ansible)
;;   )

(el-get-bundle magit)

(el-get-bundle org-mode)
;; (el-get-bundle org-mode
;;   :info
;;   :build ()
;;   )


;; (el-get-bundle yatex)
;; (el-get-bundle yatex
;;   :build ()
;;   )

(el-get-bundle evil)
;; (el-get-bundle evil
;;                :build ()
;;                :info
;;                )



;; if evil exists
;; (el-get-bundle evil-plugins)
(el-get-bundle evil-leader)
(el-get-bundle evil-matchit)
(el-get-bundle evil-numbers)
(el-get-bundle powerline-evil)
(el-get-bundle evil-org-mode)

(el-get-bundle bling/evil-visualstar)
;; (el-get-bundle justbur/evil-magit)


;; Zsh
;; (when (executable-find "zsh")
;;   (el-get-bundle zsh-users/antigen)
;;   (el-get-bundle robbyrussell/oh-my-zsh)
;;   (el-get-bundle grml/zsh-lovers)
;;   (el-get-bundle hchbaw/auto-fu.zsh)
;;   )

;;; Define recipe
;; (setq el-get-sources
;;       '(
;;         (:name
;;                :type github
;;                :pkgname ""
;;                )
;;         ))

(package-initialize)

;---------------------------------------------------------------------------
;;;; Cask
;; (require 'cask "~/.cask/cask.el")
;; (cask-initialize)

;---------------------------------------------------------------------------
;;;; auto-install
;; Proxy 環境のWindowsでは?
;; (unless (eq system-type 'windows-nt)
(require 'auto-install)
(setq auto-install-directory "~/.emacs.d/auto-install")
;;  (auto-install-update-emacswiki-package-name t)
;;  (setq url-proxy-services '(("http" . "proxy:8080")))
(auto-install-compatibility-setup) ; 互換性
;; )

;; ediffを1Windowで実行
(setq ediff-window-setup-function 'ediff-setup-windows-plain)
