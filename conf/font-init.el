;;;; Fonts and Frame Setttings (GUI Only)
;; Font Sizeを変えると, FrameのSizeやLocationも変わる
;; 使用可能Fontsは以下で確認
;; (prin1-to-string (x-list-fonts "*"))
;; UNIXでは，fc-listコマンド
;; Windowsでは，(w32-select-font)
;; 現在のFontsの確認
;; M-x list-faces-display

(add-to-list 'load-path "~/.emacs.d/conf/font")

(cond
  ;;; Emacs23以上
  ((and (eq window-system 'x)
        (>= emacs-major-version 23))
   ;; (load "x-font-init")

   (cond

     ((string-match "^\\(over\\|box\\)" system-name)
      ;; TODO: Org ModeのTITLEが大きくならない.
      (setq initial-frame-alist
            (append (list
                      '(font . "Ricty-12")
                      ;; '(font . "Osaka−等幅-12")
                      ;; '(font . "fontset-MonacoMigu")
                      ;; '(font . "fontset-MonacoRicty")
                      ;; '(font . "fontset-RictySet")
                      ;; '(font . "fontset-OsakaSet")
                      ;; '(width . 40)
                      '(height . 45)
                      ;; '(top . 40)
                      ;; '(left . 40)
                      ;; '(line-spacing . 0)
                      )
                    initial-frame-alist))
      (setq default-frame-alist initial-frame-alist)
      )

     )
   )

  ;;; Mac
  ((eq window-system 'ns)
   (load "mac-font-init")
   ;; (setq initial-frame-alist
   ;;       (append (list
   ;;                 '(font . "fontset-MonacoMarugo")
   ;;                 ; '(width . 200)
   ;;                 '(height . 45)
   ;;                 ;; '(top . 40)
   ;;                 ;; '(left . 40)
   ;;                 ;; '(line-spacing . 0)
   ;;                 )
   ;;               initial-frame-alist))
   ;; (setq default-frame-alist initial-frame-alist)
   )

  ;;; Meadow
  ;; ((and (featurep 'meadow)
  ;;       (eq window-system 'w32))
  ;;  (load "meadow-font-init")
  ;;  (setq initial-frame-alist
  ;;        (append (list
  ;;                  ;; '(font . "MSG-Consolas")
  ;;                  '(font . "Meiryo-Consolas")
  ;;                  ;; '(line-spacing . 4)
  ;;                  )
  ;;                initial-frame-alist))
  ;;  (setq default-frame-alist initial-frame-alist)
  ;;  )

  ;;; 上記以外のWindows (NTEmacs)
  ((eq window-system 'w32)

   (cond

    ((string-match "zen" system-name)
     (load "nt-monaco-init")
     (setq initial-frame-alist
           (append (list
                     '(font . "fontset-MKMonaco")
                     ;; '(font . "Migu 1M-11")
                     ;; '(font . "Osaka−等幅-11")
                     ;; '(width . 40)
                     '(height . 35)
                     ;; '(top . 40)
                     ;; '(left . 40)
                     ;; '(line-spacing . 0)
                     )
                   initial-frame-alist))
     (setq default-frame-alist initial-frame-alist)
     )

    ((string-match "^[[:upper:]]+-[[:digit:]]+PC[[:digit:]]+$" system-name)
     (load "nt-font-init")
     (setq initial-frame-alist
           (append (list
                    '(font . "fontset-MSConsolas")
                    ;; '(width . 75)
                    '(height . 36)
                    ;; '(top . 40)
                    ;;'(left . 40)
                    ;; '(line-spacing . 0)
                    )
                   initial-frame-alist))
     (setq default-frame-alist initial-frame-alist)
     )

    )
   )
  )
