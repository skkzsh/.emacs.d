;;;; org-mode

(add-to-list 'load-path "~/.emacs.d/public_repos/org-mode/lisp")
;; (add-to-list 'load-path "~/.emacs.d/public_repos/org-mode/contrib/lisp")
;; (add-to-list 'load-path "~/.emacs.d/public_repos/org-mode/testing/lisp")
;; (add-to-list 'Info-additional-directory-list "~/.emacs.d/public_repos/org-mode/doc")

;;; org-modeの初期化
(require 'org-install)
;; 拡張子がorgのFileを開いた時, 自動的にorg-modeにする
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

;;; Keybind
(global-set-key "\C-cr" 'org-remember)
;; (global-set-key "\C-cl" 'org-store-link)
;; (global-set-key "\C-ca" 'org-agenda)

;;; 折り返し
(setq org-startup-truncated nil)

;;; org-modeでの強調表示を可能にする
;; (add-hook 'org-mode-hook 'turn-on-font-lock)
;;; 見出しの余分な*を消す
;; (setq org-hide-leading-stars t)


;; Memoを格納するorgファイルの設定
(setq org-directory "~/Dropbox/.org")
(setq org-default-notes-file (expand-file-name "notes.org" org-directory))


;;; org-remember
;;; org-rememberの初期化
(org-remember-insinuate)
;;; org-rememberのTemplates
(setq org-remember-templates
      '(
        ("Note" ?n "** %?\n  %i\n  %a\n  %T" nil "Inbox")
        ("Todo" ?t "** TODO %?\n  %i\n  %a\n  %T" nil "Inbox")
        ))


;;; TODO状態
;; (setq org-use-fast-todo-selection t)
;; (setq org-todo-keywords
;;       '(
;;         (sequence "TODO(t)" "WAIT(w)" "|" "DONE(d)" "SOMEDAY(s)")
;;         ))


;;; アジェンダ表示の対象ファイル
;; (setq org-agenda-files (list org-directory))
;;; アジェンダ表示で下線を用いる
;; (add-hook 'org-agenda-mode-hook '(lambda () (hl-line-mode 1)))
;; (setq hl-line-face 'underline)
;;; 標準の祝日を利用しない
;; (setq calendar-holidays nil)


;;; Browser

;;; LaTeX
; (require 'org-latex)
(setq org-export-latex-coding-system 'euc-jp-unix)
(setq org-export-latex-date-format "%Y/%m/%d")
(setq org-export-latex-classes nil)
(add-to-list 'org-export-latex-classes
             '("jarticle"
               "\\documentclass[a4j]{jarticle}"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")
               ))
(setq org-export-latex-default-class "jarticle")
(setq org-latex-to-pdf-process '("latexmk -pdfdvi %f"))

;;; 拡張子epsの取扱いについて
;; (setq org-export-latex-inline-image-extensions nil)
;; (add-to-list 'org-export-latex-inline-image-extensions "eps")


;;; babel
;; (eval-after-load "org"
;;                  '(progn
;;                     (require 'ob-perl)
;;                     (require 'ob-ruby)
;;                     (require 'ob-python)
;;                     (require 'ob-sh)
;;                     (require 'ob-awk)
;;                     (require 'ob-gnuplot)
;;                     (require 'ob-R)
;;                     (require 'ob-latex)
;;                     (require 'ob-emacs-lisp)
;;                     (require 'ob-org)
;;                     (require 'ob-matlab)
;;                     (require 'ob-octave)
;;                     ))

;; (org-babel-do-load-languages
;;  'org-babel-load-languages '(
;;                              (perl . t)
;;                              (ruby . t)
;;                              (python. t)
;;                              (sh . t)
;;                              (awk . t)
;;                              (gnuplot . t)
;;                              (emacs-lisp . t)
;;                              (octave . t)
;;                              (matlab . t)
;;                              (R . t)
;;                              ))


;;; S5
(add-to-list 'load-path "~/.emacs.d/public_repos/org-s5")
(load "org-export-as-s5")
(add-hook 'org-mode-hook
           (lambda()
             (define-key org-mode-map "\C-cs" 'org-export-as-s5)
             ))

;; (setq org-export-htmlize-output-type 'CSS) ; CSSを変更するとき
;; (setq org-s5-theme "default")
(setq org-s5-theme "railscast")
;; (setq org-s5-theme "i18n")

;;; MobileOrg
;;; 同期するFile
;; (setq org-agenda-files
;;       (list "~/org/memo.org"
;;             "~/org/todo.org"
;;             ))
;; (setq org-agenda-files "~/org/todo.org")
;; (setq org-agenda-files "~/Dropbox/org/todo.org")
;; (setq org-mobile-files org-agenda-files)
;;; MobileOrgで新規作成したNoteを保存するFile
;; (setq org-mobile-inbox-for-pull "~/Dropbox/org/mobile.org")
;;; Dropboxで同期するのMobileOrgのDirectory
;; (setq org-mobile-directory "~/Dropbox/MobileOrg")
