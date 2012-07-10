;;;; MS Gothic
(w32-add-font
  "MS Gothic 16"
  '((spec
	  ((:char-spec ascii :height any)
	   strict
	   (w32-logfont "MS Gothic" 0 -16 400 0 nil nil nil 0 1 3 0))
	  ((:char-spec ascii :height any :weight bold)
	   strict
	   (w32-logfont "MS Gothic" 0 -16 700 0 nil nil nil 0 1 3 0)
	   ((spacing . -1)))
	  ((:char-spec ascii :height any :slant italic)
	   strict
	   (w32-logfont "MS Gothic" 0 -16 400 0   t nil nil 0 1 3 0))
	  ((:char-spec ascii :height any :weight bold :slant italic)
	   strict
	   (w32-logfont "MS Gothic" 0 -16 700 0   t nil nil 0 1 3 0)
	   ((spacing . -1)))
	  ((:char-spec japanese-jisx0208 :height any)
	   strict
	   (w32-logfont "MS Gothic" 0 -16 400 0 nil nil nil 128 1 3 0))
	  ((:char-spec japanese-jisx0208 :height any :weight bold)
	   strict
	   (w32-logfont "MS Gothic" 0 -16 700 0 nil nil nil 128 1 3 0)
	   ((spacing . -1)))
	  ((:char-spec japanese-jisx0208 :height any :slant italic)
	   strict
	   (w32-logfont "MS Gothic" 0 -16 400 0   t nil nil 128 1 3 0))
	  ((:char-spec japanese-jisx0208 :height any :weight bold :slant italic)
	   strict
	   (w32-logfont "MS Gothic" 0 -16 700 0   t nil nil 128 1 3 0)
	   ((spacing . -1))))))

;;;; MS Gothic
(w32-add-font
  "Gothic9"
  '((strict-spec
	  ((:char-spec ascii :height any :weight normal :slant normal)
	   (w32-logfont "ＭＳ ゴシック" 0 -15 400 0 nil nil nil 0 1 3 49))
	  ((:char-spec latin-iso8859-1 :height any)
	   (w32-logfont "ＭＳ ゴシック" 0 -15 400 0 nil nil nil 0 1 3 49))
	  ((:char-spec latin-jisx0201 :height any)
	   (w32-logfont "ＭＳ ゴシック" 0 -15 400 0 nil nil nil 0 128 3 49))
	  ((:char-spec katakana-jisx0201 :height any)
	   (w32-logfont "ＭＳ ゴシック" 0 -15 400 0 nil nil nil 128 1 3 49))
	  ((:char-spec japanese-jisx0208 :height any)
	   (w32-logfont "ＭＳ ゴシック" 0 -15 400 0 nil nil nil 128 1 3 49)))))

;;;; TrueType
(w32-add-font
  "TrueType"
  '((spec
	  ((:char-spec ascii :height any)
	   strict
	   (w32-logfont "ＭＳ ゴシック" 6 12 400 0 nil nil nil 0 1 3 49))
	  ((:char-spec ascii :height any :weight bold)
	   strict
	   (w32-logfont "ＭＳ ゴシック" 7 12 700 0 nil nil nil 0 1 3 49))
	  ((:char-spec ascii :height any :slant italic)
	   strict
	   (w32-logfont "ＭＳ ゴシック" 7 12 400 0   t nil nil 0 1 3 49))
	  ((:char-spec ascii :height any :weight bold :slant italic)
	   strict
	   (w32-logfont "ＭＳ ゴシック" 7 12 700 0   t nil nil 0 1 3 49))
	  ((:char-spec japanese-jisx0208 :height any)
	   strict
	   (w32-logfont "ＭＳ ゴシック" 0 13 400 0 nil nil nil 128 1 3 49))
	  ((:char-spec japanese-jisx0208 :height any :weight bold)
	   strict
	   (w32-logfont "ＭＳ ゴシック" 0 13 700 0 nil nil nil 128 1 3 49)
	   ((spacing . -1)))
	  ((:char-spec japanese-jisx0208 :height any :slant italic)
	   strict
	   (w32-logfont "ＭＳ ゴシック" 0 13 400 0   t nil nil 128 1 3 49))
	  ((:char-spec japanese-jisx0208 :height any :weight bold :slant italic)
	   strict
	   (w32-logfont "ＭＳ ゴシック" 0 13 700 0   t nil nil 128 1 3 49)
	   ((spacing . -1))))))
(set-face-attribute 'variable-pitch nil :font "TrueType")

;;;; メイリオ(size 16)
(w32-add-font
  "Meiryo"
  '((strict-spec
	  ((:char-spec ascii :height any)
	   (w32-logfont "メイリオ" 0 16 400 0 nil nil nil 0 1 3 49))
	  ((:char-spec ascii :height any :weight bold)
	   (w32-logfont "メイリオ" 0 16 700 0 nil nil nil 0 1 3 49))
	  ((:char-spec ascii :height any :slant italic)
	   (w32-logfont "メイリオ" 0 16 400 0 t nil nil 0 1 3 49))
	  ((:char-spec ascii :height any :weight bold :slant italic)
	   (w32-logfont "メイリオ" 0 16 700 0 t nil nil 0 1 3 49))
	  ((:char-spec japanese-jisx0208 :height any)
	   (w32-logfont "メイリオ" 0 16 400 0 nil nil nil 128 1 3 49))
	  ((:char-spec japanese-jisx0208 :height any :weight bold)
	   (w32-logfont "メイリオ" 0 16 700 0 nil nil nil 128 1 3 49)
	   ((spacing . -1)))
	  ((:char-spec japanese-jisx0208 :height any :slant italic)
	   (w32-logfont "メイリオ" 0 16 400 0 t nil nil 128 1 3 49))
	  ((:char-spec japanese-jisx0208 :height any :weight bold :slant italic)
	   (w32-logfont "メイリオ" 0 16 700 0 t nil nil 128 1 3 49)
	   ((spacing . -1)))
	  ((:char-spec katakana-jisx0201 :height any)
	   (w32-logfont "メイリオ" 0 16 400 0 nil nil nil 128 1 3 49))
	  ((:char-spec katakana-jisx0201 :height any :weight bold)
	   (w32-logfont "メイリオ" 0 16 700 0 nil nil nil 128 1 3 49)
	   ((spacing . -1)))
	  ((:char-spec katakana-jisx0201 :height any :slant italic)
	   (w32-logfont "メイリオ" 0 16 400 0 t nil nil 128 1 3 49))
	  ((:char-spec katakana-jisx0201 :height any :weight bold :slant italic)
	   (w32-logfont "メイリオ" 0 16 700 0 t nil nil 128 1 3 49)
	   ((spacing . -1)))
	  )))

;;;; MS Gothic-Consolas
(w32-add-font 
  "MSG-Consolas"
  '((spec
	  ((:char-spec ascii :height any)
	   strict
	   (w32-logfont "Consolas" 0 -14 400 0 nil nil nil 0 1 3 0))
	  ((:char-spec ascii :height any :weight bold)
	   strict
	   (w32-logfont "Consolas" 0 -14 700 0 nil nil nil 0 1 3 0))
	  ((:char-spec ascii :height any :slant italic)
	   strict
	   (w32-logfont "Consolas" 0 -14 400 0 t nil nil 0 1 3 0))
	  ((:char-spec ascii :height any :weight bold :slant italic)
	   strict
	   (w32-logfont "Consolas" 0 -14 700 0 t nil nil 0 1 3 0))
	  ((:char-spec japanese-jisx0208 :height any)
	   strict
	   (w32-logfont "MS ゴシック" 0 -14 400 0 nil nil nil 128 1 3 49)
	   ((spacing . 1)))
	  ((:char-spec japanese-jisx0208 :height any :slant italic)
	   strict
	   (w32-logfont "MS ゴシック" 0 -14 400 0 t nil nil 128 1 3 49)
	   ((spacing . 1)))
	  ((:char-spec japanese-jisx0208 :height any :weight bold)
	   strict
	   (w32-logfont "MS ゴシック" 0 -14 700 0 nil nil nil 128 1 3 49)
	   ((spacing . 1)))
	  ((:char-spec japanese-jisx0208 :height any :weight bold :slant italic)
	   strict
	   (w32-logfont "MS ゴシック" 0 -14 700 0 t nil nil 128 1 3 49)
	   ((spacing . 1))))))
(set-face-attribute 'variable-pitch nil :font "MSG-Consolas")

;;;; メイリオ-Consolas
(w32-add-font  "Meiryo-Consolas" nil)
(w32-change-font
  "Meiryo-Consolas"
  '((spec
	  ((:char-spec ascii :height any)
	   strict
	   (w32-logfont "Consolas" 0 -14 400 0 nil nil nil 0 1 3 0))
	  ((:char-spec ascii :height any :weight bold)
	   strict
	   (w32-logfont "Consolas" 0 -14 700 0 nil nil nil 0 1 3 0))
	  ((:char-spec ascii :height any :slant italic)
	   strict
	   (w32-logfont "Consolas" 0 -14 400 0 t nil nil 0 1 3 0))
	  ((:char-spec ascii :height any :weight bold :slant italic)
	   strict
	   (w32-logfont "Consolas" 0 -14 700 0 t nil nil 0 1 3 0))
	  ((:char-spec japanese-jisx0208 :height any)
	   strict
	   (w32-logfont "meiryo" 0 -14 400 0 nil nil nil 128 1 3 49)
	   ((spacing . 1)))
	  ((:char-spec japanese-jisx0208 :height any :slant italic)
	   strict
	   (w32-logfont "meiryo" 0 -14 400 0 t nil nil 128 1 3 49)
	   ((spacing . 1)))
	  ((:char-spec japanese-jisx0208 :height any :weight bold)
	   strict
	   (w32-logfont "meiryo" 0 -14 700 0 nil nil nil 128 1 3 49)
	   ((spacing . 1)))
	  ((:char-spec japanese-jisx0208 :height any :weight bold :slant italic)
	   strict
	   (w32-logfont "meiryo" 0 -14 700 0 t nil nil 128 1 3 49)
	   ((spacing . 1))))))
(set-face-attribute 'variable-pitch nil :font "Meiryo-Consolas")

