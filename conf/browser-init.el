;; Debianではw3mとemacs-w3mはapt-get install
;; Macではw3mはbrew install

(when (executable-find "w3m")

  (add-to-list 'load-path "~/.emacs.d/usr/share/emacs/site-lisp/w3m")
  (require 'w3m-load)

  ; (cond
  ;   ((eq system-type 'windows-nt)
  ;    (setq w3m-command "C:/usr/bin/w3m.exe"))
  ;   ;    (setq w3m-command (executable-find "w3m")))
  ;   )

;;;; Default Browser
;(setq browse-url-browser-function
;     'w3m-browse-url)
;     'browse-url-firefox)
;     'browse-url-mozilla)
;     'browse-url-opera)

;;;; Opera
;; 1
; (setq browse-url-browser-function 'browse-url-mozilla)
; (setq browse-url-mozilla-program "opera")
;; 1.1
; (setq browse-url-mozilla-new-window-is-tab t)
; (setq browse-url-new-window-flag t)
;; 1.2
; (setq browse-url-mozilla-arguments '("-newwindow"))
;; 2
(cond

  ((eq system-type 'gnu/linux)

   (defun browse-url-opera (url)
     (shell-command (format "opera '%s'" url)))

   (defun choose-browser (url &rest args)
     (interactive "sURL: ")
     (if (y-or-n-p "Use external browser ?")
         (browse-url-opera url)
       (w3m-browse-url url)
       ))
   )

  ((eq system-type 'darwin)

   (defun browse-url-open (url)
     (shell-command (format "open '%s'" url)))

   (defun choose-browser (url &rest args)
     (interactive "sURL: ")
     (if (y-or-n-p "Use external browser ?")
         (browse-url-open url)
       (w3m-browse-url url)
       ))
   )

  )
)

;;;; Browserを選択
;; (setq browse-url-browser-function 'choose-browser)

;;;; Browserを指定
(cond

  ((eq system-type 'gnu/linux)
   (setq browse-url-browser-function
         (lambda (url args)
           (shell-command (format "opera '%s'" url))
           )
         )
   )

  ;; ((eq system-type 'darwin)
  ;;  (setq browse-url-browser-function 'browse-url-open)
  ;;  )

  )

;;;; w3mの外部Browser
;;;; 未完成
; (add-hook 'w3m-load-hook
;         '(lambda ()
;            (setq browse-url-browser-function
;                  'browse-url-opera)
;            ))
