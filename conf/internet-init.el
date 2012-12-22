;;;; Wanderlust
;;; Debianではwlとgnutlsはapt-get install
;;; Macではgnutlsはbrew install
;;; Windowsで動かない

;;; wlをInstallしたDebianの
;;; /usr/share/emacs/site-lisp/wlから持ってきた.
;;; wl-news.elだけ/usr/share/emacs23/site-lisp/wl
;;; (<- /usr/share/emacs/23.2/site-lisp/wl)から持ってきて
;;; ~/.emacs.d/lisp/wl/wlに入れた.
;;; WindowsではSSL/TLSをDownloadする?
;;; - SSL
;;; - OpenSSL
;;; - TLS
;;; - GNUTLS (gnutls-cli)
;;; - STARTTLS
;;; - OpenTLS

;; "~/.emacs.d/lisp/starttls" ; Windowsで?
;; github or Debian
(setq load-path (append '(
                          ;; github
                          ; "~/.emacs.d/public_repos/wanderlust/wl"
                          ; "~/.emacs.d/public_repos/wanderlust/elmo"
                          ; "~/.emacs.d/public_repos/wanderlust/utils"
                          ; "~/.emacs.d/public_repos/wanderlust/tests"
                          "~/.emacs.d/public_repos/flim"
                          "~/.emacs.d/public_repos/semi"

                          ;; github
                          "~/.emacs.d/lisp/wanderlust/wl"
                          "~/.emacs.d/lisp/wanderlust/elmo"
                          "~/.emacs.d/lisp/wanderlust/utils"
                          "~/.emacs.d/lisp/wanderlust/tests"

                          ;; Deiban
                          ; "~/.emacs.d/lisp/debian/wl/wl"
                          ; "~/.emacs.d/lisp/debian/wl/elmo"
                          ; "~/.emacs.d/lisp/debian/wl/utils"
                          ; "~/.emacs.d/lisp/debian/flim"
                          ; "~/.emacs.d/lisp/debian/flim/attic"
                          ; "~/.emacs.d/lisp/debian/semi"
                          ; "~/.emacs.d/lisp/debian/semi/attic"

                          ) load-path))

(autoload 'wl "wl" "Wanderlust" t)
(autoload 'wl-other-frame "wl" "Wanderlust on new frame." t)
(autoload 'wl-draft "wl-draft" "Write draft with Wanderlust." t)

;;;; Calendar
(add-to-list 'load-path "~/.emacs.d/public_repos/emacs-calfw")
;; (require 'calfw) ; 初回一度だけ
;; (cfw:open-calendar-buffer) ; カレンダー表示

;; (require 'calfw-org)

(require 'calfw-ical)
;; (cfw:install-ical-schedules)


(add-to-list 'load-path "~/.emacs.d/public_repos/calfw-gcal.el")
(require 'calfw-gcal)

;;;; Evernote
;;; Ruby
;; (add-to-list 'load-path "~/.emacs.d/lisp/evernote-mode")
;; (require 'evernote-mode)
;; (setq evernote-enml-formatter-command
;; 	  '("w3m" "-dump" "-I" "UTF8" "-O" "UTF8")) ; optional
;; (global-set-key "\C-cec" 'evernote-create-note)
;; (global-set-key "\C-ceo" 'evernote-open-note)
;; (global-set-key "\C-ces" 'evernote-search-notes)
;; (global-set-key "\C-ceS" 'evernote-do-saved-search)
;; (global-set-key "\C-cew" 'evernote-write-note)
;; (global-set-key "\C-cep" 'evernote-post-region)
;; (global-set-key "\C-ceb" 'evernote-browser)


;;;; Skype
(defun my-skype ()
  (require 'skype)
  ;; (setq skype--my-user-handle "skkzsh")
  (interactive)
  (skype--init)
  (skype--open-all-users-buffer-command))

;;;; Twitter
(setq twittering-account-authorization 'authorized)

(add-hook 'twittering-mode-hook
          '(lambda ()
             (define-key twittering-mode-map "\C-ch" 'twittering-home-timeline)
             (define-key twittering-mode-map "F" 'twittering-favorite)
             (define-key twittering-mode-map "R" 'twittering-native-retweet)
             (define-key twittering-mode-map "Q" 'twittering-organic-retweet)
             ))
