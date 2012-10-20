;;;; Wanderlust
;;; Debianではwlとgnutlsはapt-get install
;;; Macではgnutlsはbrew install
;;; Windowsで動かない

;;; wlをInstallしたDebianの
;;; /usr/share/emacs/site-lisp/wlから持ってきた.
;;; wl-news.elだけ/usr/share/emacs23/site-lisp/wl
;;; (<- /usr/share/emacs/23.2/site-lisp/wl)から持ってきて
;;; ~/.emacs.d/lisp/wl/wlに入れた.
;;; Windowsでは(Open)SSL or (GNU)TLS/(START)TLSをDownloadする?

;; "~/.emacs.d/lisp/starttls" ; Windowsで?
(setq load-path (append '(
                          "~/.emacs.d/public_repos/flim"
                          "~/.emacs.d/public_repos/semi"
                          "~/.emacs.d/lisp/wl/elmo"
                          "~/.emacs.d/lisp/wl/utils"
                          "~/.emacs.d/lisp/wl/wl")
                        load-path))

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
