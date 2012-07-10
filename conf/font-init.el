;;;; フォントとフレーム (GUIのみ)
;; フォントサイズを変えると, フレームのサイズや位置も変わる
;; fc-listコマンドで使用可能フォントを確認

(add-to-list 'load-path "~/.emacs.d/conf/font")

(cond
  ;;; Emacs23以上
  ((and (eq window-system 'x)
        (>= emacs-major-version 23))
   (cond
     ;;; Debian
     ((or
        (string-match "^leap" system-name)
        (string-match "^box" system-name)
        (string-match "^ubuntu" system-name)
        (string-match "^debian" system-name)
        )
      (setq initial-frame-alist
            (append (list
                      '(font . "TakaoGothic-12")
                      ;; '(width . 40)
                      ;; '(width . 70)
                      '(height . 45)
                      ;; '(top . 40)
                      ;; '(left . 40)
                      ;; '(line-spacing . 0)
                      )
                    initial-frame-alist))
      (setq default-frame-alist initial-frame-alist))
     ((or
        (string-match "^drive" system-name)
        )
      (setq initial-frame-alist
            (append (list
                      '(font . "VL Gothic-12")
                      ;; '(width . 40)
                      ;; '(width . 70)
                      '(height . 40)
                      ;; '(top . 40)
                      ;; '(left . 40)
                      ;; '(line-spacing . 0)
                      )
                    initial-frame-alist))
      (setq default-frame-alist initial-frame-alist))
     )
   )

  ;;; Emacs22以下
  ;; (and (eq window-system 'x)
  ;;            (<= emacs-major-version 22))
  ;;       (setq initial-frame-alist
  ;;             (append (list
  ;;                       ;'(font . "")
  ;;                       '(width . 40)
  ;;                       ;'(width . 70)
  ;;                       '(height . 45)
  ;;                       ;'(top . 40)
  ;;                       ;'(left . 40)
  ;;                       ;'(line-spacing . 0)
  ;;                       )
  ;;                     initial-frame-alist))
  ;;       (setq default-frame-alist initial-frame-alist))

  ;;; Mac
  ((eq window-system 'ns)
   (load "mac-font-init")
   )

  ;;; Meadow
  ((and (featurep 'meadow)
        (eq window-system 'w32))
   (load "meadow-font-init")
   (setq initial-frame-alist
         (append (list
                   ;; '(font . "MSG-Consolas")
                   '(font . "Meiryo-Consolas")
                   ;; '(line-spacing . 4)
                   )
                 initial-frame-alist))
   (setq default-frame-alist initial-frame-alist)
   )

  ;;; 上記以外のWindows(NTEmacs)
  ((eq window-system 'w32)
   (load "ntemacs-font-init")
   (setq initial-frame-alist
         (append (list
                   '(font . "fontset-MConsolas")
                   ;; '(width . 75)
                   '(height . 36)
                   ;; '(top . 40)
                   ;;'(left . 40)
                   '(line-spacing . 0)
                   )
                 initial-frame-alist))
   (setq default-frame-alist initial-frame-alist)
   )
  )
