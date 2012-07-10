;;;; YaTeX

(add-to-list 'load-path "~/.emacs.d/public_repos/yatex")
; (add-to-list 'Info-additional-directory-list "~/.emacs.d/public_repos/yatex")

;; 文字コードをEUC-JPに指定
(setq YaTeX-kanji-code 3
      YaTeX-latex-message-code 'euc-jp
      )

;; 自動改行の無効
(add-hook 'yatex-mode-hook'(lambda ()(setq auto-fill-function nil)))

;; PrefixをWindowsに合わせる
(setq YaTeX-inhibit-prefix-letter nil)

;; Template
; (setq YaTeX-template-file "~/.auto-insert/template.tex")

;; yatexprc.el中にある
;; previewerの拡張子補完リストの追加
(defvar YaTeX-dvi2-command-ext-alist
  '(("[agx]dvi\\|dviout\\|Pictprinter\\|emacsclient" . ".dvi")
    ("ghostview\\|gv" . ".ps")
    ("acroread\\|pdf\\|Preview\\|TeXShop\\|Skim\\|evince\\|apvlv" . ".pdf")))

;; YaTeX Mode
(when (or
        (string-match "^box" system-name)
        (eq system-type 'darwin)
        (eq system-type 'windows-nt)
        )
  (setq auto-mode-alist
        (append '(
                  ("\\.tex$" . yatex-mode)
                  ("\\.ltx$" . yatex-mode)
                  ("\\.cls$" . yatex-mode)
                  ("\\.sty$" . yatex-mode)
                  ("\\.clo$" . yatex-mode)
                  ("\\.bbl$" . yatex-mode)
                  ) auto-mode-alist))
  (autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)
  )


;; TODO: command(latexmk)
(cond

  ;;;; Mac
  ((eq system-type 'darwin)
   ;(setq YaTeX-use-AMS-LaTeX t)
   (setq tex-command "platex -kanji=euc")
   ;; (setq dvi2-command "open -a Mxdvi")
   (setq dvi2-command "open -a Preview")
   (setq bibtex-command "bibtex")
   ;; (setq bibtex-command "jbibtex")
   )

  ;;;; Windows
  ((eq system-type 'windows-nt)
   (setq tex-command "platex -kanji=euc")
   (setq dvi2-command "dviout")
   (setq bibtex-command "jbibtex")
   )
  )

;; dviprintのコマンドをdvipsからdvipdfmxに変更
;; C-c t lでdvipdfmxを実行
; (setq dviprint-command-format "dvipdfmx %s")

;; Emacs23(X)のデフォルトではemacsclientでdviを開く
;(when (and (>= emacs-major-version 23)
;		   (eq window-system 'x))
;  (setq dvi2-command "emacsclient -n"))
