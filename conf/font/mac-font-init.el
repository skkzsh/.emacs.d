;; 紹介マニア(1)
(when (>= emacs-major-version 23)
  (set-face-attribute 'default nil
                      :family "monaco"
                      :height 140)
  (set-fontset-font
    (frame-parameter nil 'font)
    'japanese-jisx0208
    '("Hiragino Maru Gothic Pro" . "iso10646-1"))
  (set-fontset-font
    (frame-parameter nil 'font)
    'japanese-jisx0212
    '("Hiragino Maru Gothic Pro" . "iso10646-1"))
  (set-fontset-font
    (frame-parameter nil 'font)
    'mule-unicode-0100-24ff
    '("monaco" . "iso10646-1"))
  (setq face-font-rescale-alist
        '(("^-apple-hiragino.*" . 1.2)
          (".*osaka-bold.*" . 1.2)
          (".*osaka-medium.*" . 1.2)
          (".*courier-bold-.*-mac-roman" . 1.0)
          (".*monaco cy-bold-.*-mac-cyrillic" . 0.9)
          (".*monaco-bold-.*-mac-roman" . 0.9)
          ("-cdac$" . 1.3))))

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
