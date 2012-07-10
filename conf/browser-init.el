;; Debianではw3mとemacs-w3mはapt-get install
;; Macではw3mはbrew install

;; CVS版emacs-w3mをDownload
;; w3m-load.elだけemacs-w3mをInstallしたDebianの
;; /usr/share/emacs23/site-lisp/w3m
;; (<- /usr/share/emacs/23.2/site-lisp/w3m)から持ってきて
;; ~/.emacs.d/lisp/emacs-w3mに入れた.

(when (eq system-type 'darwin)
  (add-to-list 'load-path "~/.emacs.d/lisp/emacs-w3m")
  ; (add-to-list 'Info-additional-directory-list "~/.emacs.d/lisp/emacs-w3m/doc")
  (require 'w3m-load)
  (setq w3m-command "/usr/local/bin/w3m")
  )

;;;; デフォルト・ブラウザ
;(setq browse-url-browser-function
;	  'w3m-browse-url)
;	  'browse-url-firefox)
;	  'browse-url-mozilla)
;	  'browse-url-opera)

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
   )

  ((eq system-type 'darwin)
   (defun browse-url-open (url)
     (shell-command (format "open '%s'" url)))
   )

  )

;;;; ブラウザを選択できるようにする
(cond

  ((eq system-type 'gnu/linux)
   (defun choose-browser (url &rest args)
     (interactive "sURL: ")
     (if (y-or-n-p "Use external browser ?")
       (browse-url-opera url)
       (w3m-browse-url url)
       ))
   (setq browse-url-browser-function 'choose-browser)
   )

  ((eq system-type 'darwin)
   (defun choose-browser (url &rest args)      
     (interactive "sURL: ")
     (if (y-or-n-p "Use external browser ?")
       (browse-url-open url)
       (w3m-browse-url url)
       ))
   (setq browse-url-browser-function 'choose-browser)
   )

  )

;;;; w3mの外部ブラウザ
;;;; 未完成
; (add-hook 'w3m-load-hook 
;		  '(lambda ()
;			 (setq browse-url-browser-function 
;				   'browse-url-opera)
;			 ))
