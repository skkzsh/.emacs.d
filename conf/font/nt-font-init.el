;; Meiryo, MeiryoKe_Console
;; Consolas, Monaco
;; 数は文字の大きさ

(create-fontset-from-ascii-font
 "-outline-Consolas-normal-r-normal-normal-19-*-*-*-*-*-iso8859-1"
 nil "MKConsolas")

(create-fontset-from-ascii-font
  "-outline-Monaco-normal-r-normal-normal-16-*-*-*-*-*-iso8859-1"
  nil "MKMonaco")

(create-fontset-from-ascii-font
  "-outline-Consolas-normal-r-normal-normal-19-*-*-*-*-*-iso8859-1"
  nil "MConsolas")

;; (create-fontset-from-ascii-font
;;  "Monaco:size=15:style=Regular:weight=normal:slant=normal"
;;  nil "MKMonaco")
 ;; "Monaco-9:style=Regular:weight=normal:slant=normal"


(setq face-font-rescale-alist
      '(
        (".*Monaco.*" . 1.0)
        (".*MeiryoKe_.*" . 1.2)
        ;; (".*Consolas.*" . 1.0)
        ;; (".*Courier.*" . 1.0)
        ("-cdac$" . 1.3)))


(cond
 ;; NTEmacs 23以上
 ((>= emacs-major-version 23)

  (set-fontset-font "fontset-MKConsolas"
                    'japanese-jisx0208
                    '("MeiryoKe_Console" . "unicode-bmp"))
  (set-fontset-font "fontset-MKConsolas"
                    'katakana-jisx0201
                    '("MeiryoKe_Console" . "unicode-bmp"))

  (set-fontset-font "fontset-MKMonaco"
                    'japanese-jisx0208
                    '("MeiryoKe_Console" . "unicode-bmp"))
  (set-fontset-font "fontset-MKMonaco"
                    'katakana-jisx0201
                    '("MeiryoKe_Console" . "unicode-bmp"))

  (set-fontset-font "fontset-MConsolas"
                    'japanese-jisx0208
                    '("Meiryo" . "unicode-bmp"))
  (set-fontset-font "fontset-MConsolas"
                    'katakana-jisx0201
                    '("Meiryo" . "unicode-bmp"))

;; (set-fontset-font "fontset-MKMonaco"
  ;;                   'japanese-jisx0208
  ;;                    (font-spec :family "MeiryoKe_Console" :size 18))
  ;; (set-fontset-font "fontset-MKMonaco"
  ;;                   'katakana-jisx0201
  ;;                    (font-spec :family "MeiryoKe_Console" :size 18))

  )

 ;; NTEmacs 22以下
 ((<= emacs-major-version 22)
  (set-fontset-font "fontset-MConsolas"
                    'japanese-jisx0208
                    '("メイリオ*" . "jisx0208-sjis"))
  (set-fontset-font "fontset-MConsolas"
                    'katakana-jisx0201
                    '("メイリオ*" . "jisx0201-katakana"))
  )
 )

;; メイリオ(NTEmacs 22)
;(if (and (eq window-system 'w32)
;          (<= emacs-major-version 22))
;  (require 'fixed-width-fontset)
;  (require 'ntemacs-font)
;  (defvar ntemacs-font-encode-family-list-mywinfontset
;    '((ascii . "Verdana")
;      (japanese-jisx0208 . "メイリオ*")
;      (katakana-jisx0201 . "メイリオ*")))
;  (fixed-width-create-fontset "mywinfontset"
;                              ntemacs-font-defined-sizes
;                              ntemacs-font-encode-family-list-mywinfontset)
;  )


;;;; メイリオ-Consolas
;;(set-default-font "Consolas 11") ; (Emacs 23)
;(set-face-attribute 'default nil
;                    :family "Consolas"
;                    :height 105)
;(set-fontset-font "fontset-default"
;                  'japanese-jisx0208
;                  '("meiryo" . "jisx0208-sjis"))
;                  ;'("meiryo" . "unicode-bmp"))
;(set-fontset-font "fontset-default"
;                  'katakana-jisx0201
;                  '("meiryo" . "jisx0201-katakana"))
;                  ;'("meiryo" . "unicode-bmp"))


;;;; デフォルト(NTEmacs 22)
;(if (and (eq window-system 'w32)
;         (<= emacs-major-version 22))
;  (require 'ntemacs-font)
;  (fixed-width-set-fontset "msgothic" 14)
;  ;; msgothic, msmincho, lucida
;  ;; 7, 8, 9, 10, 12, 14, 16, 18, 20, 24
;  )
