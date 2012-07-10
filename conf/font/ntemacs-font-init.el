;;;; デフォルト(NTEmacs 22)
;(if (and (eq window-system 'w32)
;		 (<= emacs-major-version 22))
;  (require 'ntemacs-font)
;  (fixed-width-set-fontset "msgothic" 14)
;  ;; msgothic, msmincho, lucida
;  ;; 7, 8, 9, 10, 12, 14, 16, 18, 20, 24
;  )

;;;; メイリオ-Consolas
;;(set-default-font "Consolas 11") ; (Emacs 23)
;(set-face-attribute 'default nil
;					:family "Consolas" 
;					:height 105)
;(set-fontset-font "fontset-default"
;				  'japanese-jisx0208
;				  '("meiryo" . "jisx0208-sjis"))
;				  ;'("meiryo" . "unicode-bmp"))
;(set-fontset-font "fontset-default"
;				  'katakana-jisx0201
;				  '("meiryo" . "jisx0201-katakana"))
;				  ;'("meiryo" . "unicode-bmp"))

;;;; フォントセット
;; メイリオ-Consolas
(create-fontset-from-ascii-font
  "-outline-Consolas-normal-r-normal-normal-14-*-*-*-*-*-iso8859-1"
  nil "MConsolas") ; 数は文字の大きさ
(cond 
  ;; NTEmacs 23以上
  ((>= emacs-major-version 23)
   (set-fontset-font "fontset-MConsolas"
					 'japanese-jisx0208
					 '("Meiryo" . "unicode-bmp"))
   (set-fontset-font "fontset-MConsolas"
					 'katakana-jisx0201
					 '("Meiryo" . "unicode-bmp")))
  ;; NTEmacs 22以下
  ((<= emacs-major-version 22)
   (set-fontset-font "fontset-MConsolas"
					 'japanese-jisx0208
					 '("メイリオ*" . "jisx0208-sjis"))
   (set-fontset-font "fontset-MConsolas"
					 'katakana-jisx0201
					 '("メイリオ*" . "jisx0201-katakana"))))

;; メイリオ(NTEmacs 22)
;(if (and (eq window-system 'w32)
;		  (<= emacs-major-version 22))
;  (require 'fixed-width-fontset)
;  (require 'ntemacs-font)
;  (defvar ntemacs-font-encode-family-list-mywinfontset
;	'((ascii . "Verdana")
;	  (japanese-jisx0208 . "メイリオ*")
;	  (katakana-jisx0201 . "メイリオ*")))
;  (fixed-width-create-fontset "mywinfontset"
;							  ntemacs-font-defined-sizes
;							  ntemacs-font-encode-family-list-mywinfontset)
;  )
