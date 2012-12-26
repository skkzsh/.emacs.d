;;;; Wanderlust
;;; Debianではwlとgnutlsはapt-get install
;;; Macではgnutlsはbrew install

(setq load-path (append '(
                          "~/.emacs.d/usr/share/emacs/site-lisp/flim"
                          "~/.emacs.d/usr/share/emacs/site-lisp/semi"
                          "~/.emacs.d/usr/share/emacs/site-lisp/wl"
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
