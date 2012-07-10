(setq load-path
      (append '(
                "~/.emacs.d/auto-install"
                "~/.emacs.d/lisp"
                "~/.emacs.d/conf"
                ) load-path))


(load "edit-init")
(load "font-init")
(load "appear-init")
(load "base-init")
(load "ja-init")
(load "key-init")
(load "abbrev-init")
(load "move-init")
(load "eshell-init")

(load "install-init")
(load "org-init")
(load "lisp-init")
(load "elscreen-init")
(load "appear-lisp-init")
(load "edit-lisp-init")
(load "language-init")
;; (load "perl-init")
(load "move-lisp-init")
(load "browser-init")
(load "internet-init")

(load "yatex-init")
(load "anything-init")
(load "migemo-init")
;; (load "flymake-init")

;; (load "browse-kill-ring-init")
;; (load "iswitchb-init")

(load "test-init")

;;; Local
(when (file-directory-p "~/.emacs.d/local")
  ;; (setq "~/.emacs.d/local")
  (add-to-list 'load-path "~/.emacs.d/local")
  (when (file-readable-p "~/.emacs.d/local/local-init.el")
    (load "local-init")
    )
  )

;;;; 読み込み順
;; - font-initの後にappear-initにしないと,
;;   default-frame-alistが反映されない.
;; - elscreen-initの後にappear-listp-initにしないと,
;;   elscreenのタブの色がcolor-themeに反映されない.
;; - whitespace-modeがtimestampを無効化するので,
;;   timestampをwhitespace-modeより先に読む.
