;; Takao, Osaka, Ricty, Migu, Yasashisa
;; Monaco, Inconsolata

;; (set-default-font "Monaco-10")
;; (set-fontset-font (frame-parameter nil 'font)
;;                   'japanese-jisx0208
;;                   '("Osaka-Mono" . "unicode-bmp"))

;; (create-fontset-from-ascii-font
;;   "Inconsolata-12:weight=normal:slant=normal"
;;   nil "InconsolataTakao")

;; (create-fontset-from-ascii-font
;;   "Monaco-10:weight=normal:slant=normal"
;;   nil "MonacoOsaka")

(create-fontset-from-ascii-font
  "Monaco-10:weight=normal:slant=normal"
  nil "MonacoMigu")
  ;; "Monaco:size=13:weight=normal:slant=normal"

(create-fontset-from-ascii-font
  "Monaco-10:weight=normal:slant=normal"
  nil "MonacoRicty")

;; (create-fontset-from-ascii-font
;;   "Inconsolata-12:weight=normal:slant=normal"
;;   nil "InconsolataYasashisa")

(create-fontset-from-ascii-font
  "Ricty:size=16:weight=normal:slant=normal"
  nil "RictySet")

(create-fontset-from-ascii-font
  "Osaka－等幅:size=16:weight=normal:slant=normal"
  nil "OsakaSet")

;; (add-to-list 'face-font-rescale-alist
;; (setq face-font-rescale-alist
;;       '(
;;         (".*Monaco.*" . 1.0)
;;         (".*Osaka.*" . 1.0)
;;         (".*Migu.*" . 1.2)
;;         ;; (".*やさしさゴシック.*" . 1.2)
;;         ("-cdac$" . 1.3)))


(cond

  ((>= emacs-major-version 23)

  ;; (set-fontset-font "fontset-InconsolataTakao"
  ;;   'japanese-jisx0208
  ;;   (font-spec :family "Takaoゴシック" :size 16))
    ;; '("Takaoゴシック" . "unicode-bmp"))
  ;; (set-fontset-font "fontset-InconsolataTakao"
  ;;   'japanese-jisx0212
  ;;   '("Takaoゴシック" . "unicode-bmp"))

  ;; (set-fontset-font "fontset-MonacoOsaka"
  ;;   'japanese-jisx0208
    ;; '("Osaka-Mono" . "unicode-bmp"))
  ;; (set-fontset-font "fontset-MonacoOsaka"
  ;;   'japanese-jisx0212
  ;;   '("Osaka-Mono" . "unicode-bmp"))
  ;;   '("Osaka-Mono" . "unicode-bmp"))
  ;;   (font-spec :family "Osaka－等幅" :size 16))

  (set-fontset-font "fontset-MonacoMigu"
    'japanese-jisx0208
    '("Migu 1M" . "unicode-bmp"))
  ;; (set-fontset-font "fontset-MonacoMigu"
  ;;   'japanese-jisx0212
  ;;   '("Migu 1M" . "unicode-bmp"))
    ;; (font-spec :family "Migu 1M" :size 16))
    ;; '("Migu 1M" . "unicode-bmp"))

  (set-fontset-font "fontset-MonacoRicty"
    'japanese-jisx0208
    '("Ricty" . "unicode-bmp"))
  ;; (set-fontset-font "fontset-MonacoRicty"
  ;;   'japanese-jisx0212
  ;;   '("Ricty" . "unicode-bmp"))
    ;; (font-spec :family "Ricty" :size 16))
    ;; '("Ricty" . "unicode-bmp"))

  ;; (set-fontset-font "fontset-InconsolataYasashisa"
  ;;   'japanese-jisx0208
  ;;   '("07やさしさゴシック" . "unicode-bmp"))
  ;; (set-fontset-font "fontset-InconsolataYasashisa"
  ;;   'japanese-jisx0212
  ;;   '("07やさしさゴシック" . "unicode-bmp"))

  (set-fontset-font "fontset-RictySet"
    'japanese-jisx0208
    '("Ricty" . "unicode-bmp"))

  (set-fontset-font "fontset-OsakaSet"
    'japanese-jisx0208
    '("Osaka－等幅" . "unicode-bmp"))

  )
  )
