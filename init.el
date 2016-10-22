
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; (package-initialize)

(setq load-path
      (append '(
                "~/.emacs.d/auto-install"
                "~/.emacs.d/lisp"
                "~/.emacs.d/conf"
                ) load-path))


(load "edit-init")
(load "font-init")
(load "install-init")
(load "appear-init")
(load "base-init")
(load "ja-init")
(load "key-init")
(load "abbrev-init")
(load "move-init")
(load "eshell-init")

(load "lisp-init")
(load "junk-init")
(load "org-init")
(load "internet-init")
(load "elscreen-init")

(load "color-init")

(load "appear-lisp-init")
(load "edit-lisp-init")
(load "language-init")
(load "develop-init")
(load "markdown-init")
;; (load "perl-init")
(load "move-lisp-init")
(load "browser-init")

;; (load "yatex-init")
(load "migemo-init")
;; (load "anything-init")
(load "helm-init")
(load "ace-isearch-init")
;; (load "flymake-init")
(load "evil-init")

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
;; - elscreen-initの後にcolor-initにしないと,
;;   elscreenのタブの色がcolor-themeに反映されない.
;; - whitespace-modeがtimestampを無効化するので,
;;   timestampをwhitespace-modeより先に読む.

;;;; Memo
;; 設定の場合分けは, cond/if/when/unlessを使用.
;; window-system, system-type, emacs(-major)-version,
;; system-configuration, invocation-nameなどを評価.
;; getenvも使用可.
;;
;; 方法は,
;; *scratch*で<C-j>,
;; 任意のTextで<C-xC-e>, <M-:>
;; ielm
;; 等
;;
;; window-system - x, ns, w32, win32, nil, ...
;; system-type   - gnu/linux, darwin, windows-nt, cygwin, ms-dos, ...
;; system-name   -
;; featurep      - meadow, xemacs, ...
