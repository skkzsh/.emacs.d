;;;; Internet Settings

;---------------------------------------------------------------------------
;;;; Search web
(require 'search-web)

;---------------------------------------------------------------------------
;;;; Google Search
(require 'google-this)
(global-set-key "\C-c g" 'google-this-mode-submap)
;; (setq google-this-location-suffix "co.jp")
(google-this-mode 1)

;---------------------------------------------------------------------------
;;;; Translator
(require 'text-translator)
(global-set-key (kbd "C-x M-t") 'text-translator)
(global-set-key (kbd "C-x M-T") 'text-translator-translate-last-string)
;; (setq text-translator-prefix-key "\M-n")
;; 自動選択に使用する関数を設定
(setq text-translator-auto-selection-func
      'text-translator-translate-by-auto-selection-enja)
(global-set-key (kbd "C-x t") 'text-translator-translate-by-auto-selection)

;; google-translate

;---------------------------------------------------------------------------
;;;; Weather
;;;; Yahoo
;;; TODO: Local Variable
;; (require 'yahoo-weather)
;; (setq yahoo-weather-location 'JAXX0071)
;; JAXX00
;; 85 ; Tokyo
;; 71 ; Osaka
;; 47 ; Kyoto

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
;;;; Calendar
;; (require 'calfw) ; 初回一度だけ
;; (cfw:open-calendar-buffer) ; カレンダー表示

;; (require 'calfw-org)

;; (require 'calfw-ical)
;; (cfw:install-ical-schedules)


;; (require 'calfw-gcal)

;---------------------------------------------------------------------------
;;;; Evernote
;;; Ruby
;; (require 'evernote-mode)
;; (setq evernote-enml-formatter-command
;;    '("w3m" "-dump" "-I" "UTF8" "-O" "UTF8")) ; optional
;; Passwordをgpgで管理
;; (setq evernote-password-cache t)
;; gpgファイルの保存先
;; (setq enh-password-cache-file "~/.emacs.d/evernote-mode.gpg")
;; Keybind
;; (global-set-key "\C-c e c" 'evernote-create-note)
;; (global-set-key "\C-c e o" 'evernote-open-note)
;; (global-set-key "\C-c e s" 'evernote-search-notes)
;; (global-set-key "\C-c e S" 'evernote-do-saved-search)
;; (global-set-key "\C-c e w" 'evernote-write-note)
;; (global-set-key "\C-c e p" 'evernote-post-region)
;; (global-set-key "\C-c e b" 'evernote-browser)
;; (global-set-key "\C-c e e" 'evernote-change-edit-mode)

;---------------------------------------------------------------------------
;;;; Skype
;; (defun my-skype ()
;;   (require 'skype)
;;   ;; (setq skype--my-user-handle "skkzsh")
;;   (interactive)
;;   (skype--init)
;;   (skype--open-all-users-buffer-command))

;---------------------------------------------------------------------------
;;;; Twitter
;; (setq twittering-account-authorization 'authorized)

;; (add-hook 'twittering-mode-hook
;;           '(lambda ()
;;              (define-key twittering-mode-map "\C-c h" 'twittering-home-timeline)
;;              (define-key twittering-mode-map "F" 'twittering-favorite)
;;              (define-key twittering-mode-map "R" 'twittering-native-retweet)
;;              (define-key twittering-mode-map "Q" 'twittering-organic-retweet)
;;              ))
