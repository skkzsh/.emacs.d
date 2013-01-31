(create-fontset-from-ascii-font
  "-outline-Monaco-normal-r-normal-normal-16-*-*-*-*-*-iso8859-1"
  nil "MKMonaco")

(create-fontset-from-ascii-font
  "-outline-Monaco-normal-r-normal-normal-16-*-*-*-*-*-iso8859-1"
  nil "MMonaco")

(setq face-font-rescale-alist
      '(
        (".*Monaco.*" . 1.0)
        (".*メイリオ.*" . 1.3)
        (".*MeiryoKe_.*" . 1.2)
        ;; (".*Consolas.*" . 1.0)
        ;; (".*Courier.*" . 1.0)
        ("-cdac$" . 1.3)))

(cond
 ;; NTEmacs 23以上
 ((>= emacs-major-version 23)

  (set-fontset-font "fontset-MKMonaco"
                    'japanese-jisx0208
                    '("MeiryoKe_Console" . "unicode-bmp"))
  (set-fontset-font "fontset-MKMonaco"
                    'katakana-jisx0201
                    '("MeiryoKe_Console" . "unicode-bmp"))

  (set-fontset-font "fontset-MMonaco"
                    'japanese-jisx0208
                    '("Meiryo" . "unicode-bmp"))
  (set-fontset-font "fontset-MMonaco"
                    'katakana-jisx0201
                    '("Meiryo" . "unicode-bmp"))

;; (set-fontset-font "fontset-MKMonaco"
  ;;                   'japanese-jisx0208
  ;;                    (font-spec :family "MeiryoKe_Console" :size 18))
  ;; (set-fontset-font "fontset-MKMonaco"
  ;;                   'katakana-jisx0201
  ;;                    (font-spec :family "MeiryoKe_Console" :size 18))

  )
  )
