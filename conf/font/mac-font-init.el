;; Ricty, Migu, Rounded Mgen+
;; Inconsolata

(set-face-attribute 'default nil
                    :family "Ricty Diminished"
                    :height 160)

(dolist (charset
         '(
           japanese-jisx0208
           japanese-jisx0212
           katakana-jisx0201  ; 半角ｶﾅ
           ))
  (set-fontset-font
   (frame-parameter nil 'font)
   charset
   (font-spec :family "Ricty Diminished"))
  )

;; (set-fontset-font
;;   (frame-parameter nil 'font)
;;   'japanese-jisx0208
;;   (font-spec :family "Ricty Diminished" :size 16))

;; (set-fontset-font
;;   (frame-parameter nil 'font)
;;   'japanese-jisx0212
;;   (font-spec :family "Ricty Diminished" :size 16))

;; (set-fontset-font
;;   (frame-parameter nil 'font)
;;   'katakana-jisx0201  ; 半角ｶﾅ
;;   (font-spec :family "Ricty Diminished" :size 16))


;; (create-fontset-from-ascii-font
;;   "Monaco-14:weight=normal:slant=normal"
;;   nil "MonacoMarugo")

; (create-fontset-from-ascii-font
;   "Menlo-14:weight=normal:slant=normal"
;   nil "MenloMarugo")

; (create-fontset-from-ascii-font
;   "Monaco:size=14:weight=normal:slant=normal"
;   nil "MonacoYasashisa")

;; (create-fontset-from-ascii-font
;;   "Monaco-14:weight=normal:slant=normal"
;;   nil "MonacoMigu")

;; (create-fontset-from-ascii-font
;;   "Monaco-14:weight=normal:slant=normal"
;;   nil "MonacoRicty")

;; (create-fontset-from-ascii-font
;;   "Migu-16:weight=normal:slant=normal"
;;   nil "MiguSet")

;; (setq face-font-rescale-alist
;;       '(
;;         ;; (".*Ricty.*" . 1.2)
;;         ;; (".*Migu_1M.*" . 1.2)
;;         ; (".*YasashisaGothic.*" . 1.2)
;;         ; (".*Menlo.*" . 1.0)
;;         ("^-apple-hiragino.*" . 1.2)
;;         (".*osaka-bold.*" . 1.2)
;;         (".*osaka-medium.*" . 1.2)
;;         (".*courier-bold-.*-mac-roman" . 1.0)
;;         (".*monaco cy-bold-.*-mac-cyrillic" . 0.9)
;;         (".*monaco-bold-.*-mac-roman" . 0.9)
;;         ("-cdac$" . 1.3)))


;; (cond

;;  ((>= emacs-major-version 23)

;;   (set-fontset-font "fontset-MonacoMarugo"
;;                     'japanese-jisx0208
;;                     '("Hiragino Maru Gothic Pro" . "iso10646-1"))
;;   (set-fontset-font "fontset-MonacoMarugo"
;;                     'japanese-jisx0212
;;                     '("Hiragino Maru Gothic Pro" . "iso10646-1"))
;;   (set-fontset-font "fontset-MonacoMarugo"
;;                     'mule-unicode-0100-24ff
;;                     '("Monaco" . "iso10646-1"))

  ;; (set-fontset-font "fontset-MenloMarugo"
  ;;                   'japanese-jisx0208
  ;;                   '("Hiragino Maru Gothic Pro" . "iso10646-1"))
  ;; (set-fontset-font "fontset-MenloMarugo"
  ;;                   'japanese-jisx0212
  ;;                   '("Hiragino Maru Gothic Pro" . "iso10646-1"))
  ;; (set-fontset-font "fontset-MenloMarugo"
  ;;                   'mule-unicode-0100-24ff
  ;;                   '("Menlo" . "iso10646-1"))

  ;; (set-fontset-font "fontset-MonacoYasashisa"
  ;;                   'japanese-jisx0208
  ;;                   '("07YasashisaGothic" . "iso10646-1"))
  ;; (set-fontset-font "fontset-MonacoYasashisa"
  ;;                   'japanese-jisx0212
  ;;                   '("07YasashisaGothic" . "iso10646-1"))
  ;; (set-fontset-font "fontset-MonacoYasashisa"
  ;;                   'mule-unicode-0100-24ff
  ;;                   '("Monaco" . "iso10646-1"))

  ;; (set-fontset-font "fontset-MonacoMigu"
  ;;                   'japanese-jisx0208
  ;;                   '("Migu_1M" . "iso10646-1"))
  ;; (set-fontset-font "fontset-MonacoMigu"
  ;;                   'japanese-jisx0212
  ;;                   '("Migu_1M" . "iso10646-1"))
  ;; (set-fontset-font "fontset-MonacoMigu"
  ;;                   'mule-unicode-0100-24ff
  ;;                   '("Monaco" . "iso10646-1"))

  ;; (set-fontset-font "fontset-MonacoRicty"
  ;;                   'japanese-jisx0208
  ;;                   '("Ricty" . "iso10646-1"))
  ;; (set-fontset-font "fontset-MonacoRicty"
  ;;                   'japanese-jisx0212
  ;;                   '("Ricty" . "iso10646-1"))
  ;; (set-fontset-font "fontset-MonacoRicty"
  ;;                   'mule-unicode-0100-24ff
  ;;                   '("Monaco" . "iso10646-1"))

  ;; (set-fontset-font "fontset-MiguSet"
  ;;                   'japanese-jisx0208 '("Migu_1M" . "iso10646-*"))

  ;;)
  ;;)


;; 紹介マニア(1)
; (when (>= emacs-major-version 23)
;   (set-face-attribute 'default nil
;                       :family "monaco"
;                       :height 140)
;   (set-fontset-font
;     (frame-parameter nil 'font)
;     'japanese-jisx0208
;     '("Hiragino Maru Gothic Pro" . "iso10646-1"))
;   (set-fontset-font
;     (frame-parameter nil 'font)
;     'japanese-jisx0212
;     '("Hiragino Maru Gothic Pro" . "iso10646-1"))
;   (set-fontset-font
;     (frame-parameter nil 'font)
;     'mule-unicode-0100-24ff
;     '("monaco" . "iso10646-1"))
;   (setq face-font-rescale-alist
;         '(("^-apple-hiragino.*" . 1.2)
;           (".*osaka-bold.*" . 1.2)
;           (".*osaka-medium.*" . 1.2)
;           (".*courier-bold-.*-mac-roman" . 1.0)
;           (".*monaco cy-bold-.*-mac-cyrillic" . 0.9)
;           (".*monaco-bold-.*-mac-roman" . 0.9)
;           ("-cdac$" . 1.3))))


;; 日々、とんは語る
;; ;; acii
;; (set-face-attribute 'default nil
;;   :family "Menlo"
;;   :height 140)
;; ;; kanji
;; (set-fontset-font nil 'japanese-jisx0208 (font-spec :family "Hiragino_Mincho_ProN"))
;; ;; kana
;; (set-fontset-font nil '( #x3000 .  #x30ff) (font-spec :family "NfMotoyaCedar"))
;; ;; width
;; (setq face-font-rescale-alist
;;   '((".*Menlo.*" . 1.0)
;;   ("^-apple-M+.*" . 1.2)
;;   (".*Hiragino_Mincho_ProN.*" . 1.2)
;;   (".*Hiragino_Kaku_Gothic_ProN.*" . 1.2)
;;   (".*nfmotoyacedar-bold.*" . 1.2)
;;   (".*nfmotoyacedar-medium.*" . 1.2)
;;   ("-cdac$" . 1.3))))


;; 紹介マニア(2)
;(create-fontset-from-ascii-font "Menlo-14:weight=normal:slant=normal" nil "menlokakugo")
;(set-fontset-font "fontset-menlokakugo"
;                 'unicode
;                 (font-spec :family "Hiragino Kaku Gothic ProN" :size 16)
;                 nil
;                 'append)
;(add-to-list 'default-frame-alist '(font . "fontset-menlokakugo"))


;; マイナビ
;(setq my-font "-*-*-medium-r-normal--14-*-*-*-*-*-fontset-hiramaru")
;(setq mac-allow-anti-aliasing t)
;(if (= emacs-major-version 22)
;  (require 'carbon-font))
;(set-default-font my-font)
;(add-to-list 'default-frame-alist `(font . ,my-font))
;(when (= emacs-major-version 23)
;  (set-fontset-font
;   (frame-parameter nil 'font)
;   'japanese-jisx0208
;   '("M+ 1mn" . "iso10646-1"))
;  (setq face-font-rescale-alist
;       '(("^-apple-M+_1mn.*" . 1.2)
;         (".*osaka-bold.*" . 1.2)
;         (".*osaka-medium.*" . 1.2)
;         (".*courier-bold-.*-mac-roman" . 1.0)
;         (".*monaco cy-bold-.*-mac-cyrillic" . 0.9)
;         (".*monaco-bold-.*-mac-roman" . 0.9)
;         ("-cdac$" . 1.3))))


;; あどけない話
;(setq my-font "-*-*-medium-r-normal--14-*-*-*-*-*-fontset-hiramaru")
;(setq fixed-width-use-QuickDraw-for-ascii t)
;(setq mac-allow-anti-aliasing t)
;(if (= emacs-major-version 22)
;  (require 'carbon-font))
;(set-default-font my-font)
;(add-to-list 'default-frame-alist `(font . ,my-font))
;(when (= emacs-major-version 23)
;  (set-fontset-font
;   (frame-parameter nil 'font)
;   'japanese-jisx0208
;   '("Hiragino Maru Gothic Pro" . "iso10646-1"))
;  (setq face-font-rescale-alist
;       '(("^-apple-hiragino.*" . 1.2)
;         (".*osaka-bold.*" . 1.2)
;         (".*osaka-medium.*" . 1.2)
;         (".*courier-bold-.*-mac-roman" . 1.0)
;         (".*monaco cy-bold-.*-mac-cyrillic" . 0.9)
;         (".*monaco-bold-.*-mac-roman" . 0.9)
;         ("-cdac$" . 1.3))))
