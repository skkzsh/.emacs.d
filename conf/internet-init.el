;;;; Internet Settings

;---------------------------------------------------------------------------
;;;; Wanderlust
;;; Debianではwlはapt-get install
;;; Macではgnutlsはbrew install

(setq load-path (append '(
                          "~/.emacs.d/usr/share/emacs/site-lisp/flim"
                          "~/.emacs.d/usr/share/emacs/site-lisp/semi"
                          "~/.emacs.d/usr/share/emacs/site-lisp/wl"
                          ) load-path))

(autoload 'wl "wl" "Wanderlust" t)
(autoload 'wl-other-frame "wl" "Wanderlust on new frame." t)
(autoload 'wl-draft "wl-draft" "Write draft with Wanderlust." t)

;---------------------------------------------------------------------------
;;;; Translator
(when (require 'text-translator nil t)
  (global-set-key "\C-x\M-t" 'text-translator)
  (global-set-key "\C-x\M-T" 'text-translator-translate-last-string)
  ;; (setq text-translator-prefix-key "\M-n")
  ;; 自動選択に使用する関数を設定
  (setq text-translator-auto-selection-func
        'text-translator-translate-by-auto-selection-enja)
  (global-set-key "\C-xt" 'text-translator-translate-by-auto-selection)
  )

;; google-translate

;---------------------------------------------------------------------------
;;;; Weather
;;;; Yahoo
;;; TODO: Local Variable
(when (require 'yahoo-weather nil t)
  ;; JAXX00
  ;; 85 ; Tokyo
  ;; 47 ; Kyoto
  (setq yahoo-weather-location 'JAXX0047)
  )

;---------------------------------------------------------------------------
;;;; Calendar
(add-to-list 'load-path "~/.emacs.d/public_repos/emacs-calfw")
;; (require 'calfw) ; 初回一度だけ
;; (cfw:open-calendar-buffer) ; カレンダー表示

;; (require 'calfw-org)

(require 'calfw-ical)
;; (cfw:install-ical-schedules)


;; (add-to-list 'load-path "~/.emacs.d/public_repos/calfw-gcal.el")
;; (require 'calfw-gcal)

;---------------------------------------------------------------------------
;;;; Evernote
;;; Ruby
;; (add-to-list 'load-path "~/.emacs.d/public_repos/evernote-mode")
;; (require 'evernote-mode)
;; (setq evernote-enml-formatter-command
;;    '("w3m" "-dump" "-I" "UTF8" "-O" "UTF8")) ; optional
;; Passwordをgpgで管理
;; (setq evernote-password-cache t)
;; gpgファイルの保存先
;; (setq enh-password-cache-file "~/.emacs.d/evernote-mode.gpg")
;; Keybind
;; (global-set-key "\C-cec" 'evernote-create-note)
;; (global-set-key "\C-ceo" 'evernote-open-note)
;; (global-set-key "\C-ces" 'evernote-search-notes)
;; (global-set-key "\C-ceS" 'evernote-do-saved-search)
;; (global-set-key "\C-cew" 'evernote-write-note)
;; (global-set-key "\C-cep" 'evernote-post-region)
;; (global-set-key "\C-ceb" 'evernote-browser)
;; (global-set-key "\C-cee" 'evernote-change-edit-mode)

;---------------------------------------------------------------------------
;;;; Skype
(defun my-skype ()
  (require 'skype)
  ;; (setq skype--my-user-handle "skkzsh")
  (interactive)
  (skype--init)
  (skype--open-all-users-buffer-command))

;---------------------------------------------------------------------------
;;;; Twitter
;; (setq twittering-account-authorization 'authorized)

;; (add-hook 'twittering-mode-hook
;;           '(lambda ()
;;              (define-key twittering-mode-map "\C-ch" 'twittering-home-timeline)
;;              (define-key twittering-mode-map "F" 'twittering-favorite)
;;              (define-key twittering-mode-map "R" 'twittering-native-retweet)
;;              (define-key twittering-mode-map "Q" 'twittering-organic-retweet)
;;              ))
