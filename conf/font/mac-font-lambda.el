(
 (lambda (f h)

   (set-face-attribute 'default nil
                       :family f
                       :height (* h 10))

   (dolist (charset
            '(
              japanese-jisx0208
              japanese-jisx0212
              katakana-jisx0201  ; 半角ｶﾅ
              ))
     (set-fontset-font
      (frame-parameter nil 'font)
      charset
      (font-spec :family f))
     )

   )

 "Ricty Diminished" 16
 )

