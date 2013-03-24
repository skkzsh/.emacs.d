;;;; org-mode
;; TODO

;---------------------------------------------------------------------------
(add-to-list 'load-path "~/.emacs.d/public_repos/org-mode/lisp")
;; (add-to-list 'load-path "~/.emacs.d/public_repos/org-mode/contrib/lisp")
;; (add-to-list 'load-path "~/.emacs.d/public_repos/org-mode/testing/lisp")
;; (add-to-list 'Info-additional-directory-list "~/.emacs.d/public_repos/org-mode/doc")

;;; 初期化
(require 'org-install)
;; 拡張子がorgのFileを開いた時, 自動的にorg-modeにする
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

;---------------------------------------------------------------------------
;;;; Keybind
;;; Global
(global-set-key (kbd "C-c r") 'org-remember)
(global-set-key (kbd "C-c l") 'org-store-link)
;; (global-set-key (kbd "C-c a") 'org-agenda)
;;; Org
(add-hook 'org-mode-hook
          (lambda()

            (define-key org-mode-map (kbd "C-S-n") 'org-shiftcontroldown)
            (define-key org-mode-map (kbd "C-S-b") 'org-shiftcontrolleft)
            ;;;; (define-key org-mode-map (kbd "C-S-m") 'org-insert-todo-heading-respect-content)
            (define-key org-mode-map (kbd "C-S-f") 'org-shiftcontrolright)
            (define-key org-mode-map (kbd "C-S-p") 'org-shiftcontrolup)

            ;;;; (define-key org-mode-map (kbd "C-m") 'org-insert-heading-respect-content)
            ;;;; (define-key org-mode-map (kbd "C-i") 'org-force-cycle-archived)

            (define-key org-mode-map (kbd "M-N") 'org-shiftmetadown)
            (define-key org-mode-map (kbd "M-B") 'org-shiftmetaleft)
            ;;;; (define-key org-mode-map (kbd "M-M") 'org-insert-todo-heading)
            (define-key org-mode-map (kbd "M-F") 'org-shiftmetaright)
            (define-key org-mode-map (kbd "M-P") 'org-shiftmetaup)

            (define-key org-mode-map (kbd "M-J") 'org-metadown)
            (define-key org-mode-map (kbd "M-H") 'org-metaleft)
            (define-key org-mode-map (kbd "M-L") 'org-metaright)
            ;;;; (define-key org-mode-map (kbd "M-I") 'pcomplete)
            (define-key org-mode-map (kbd "M-K") 'org-metaup)

            (define-key org-mode-map (kbd "C-c m") 'org-meta-return)

            (define-key org-mode-map (kbd "C-S-j") 'org-shiftdown)
            (define-key org-mode-map (kbd "C-S-h") 'org-shiftleft)
            ;;;; (define-key org-mode-map (kbd "C-S-m") 'org-table-copy-down)
            (define-key org-mode-map (kbd "C-S-l") 'org-shiftright)
            (define-key org-mode-map (kbd "C-S-k") 'org-shiftup)

            (define-key org-mode-map (kbd "C-S-i") 'org-shifttab)
            (define-key org-mode-map (kbd "C-c i") 'org-shifttab)
            ))

;---------------------------------------------------------------------------
;;; 折り返し
(setq org-startup-truncated nil)

;;; 画像のInline表示
;;; 1
(setq org-startup-with-inline-images t)
;;; 2
;; (add-hook 'org-mode-hook 'turn-on-iimage-mode)

;;; org-modeでの強調表示を可能にする
;; (add-hook 'org-mode-hook 'turn-on-font-lock)
;;; 見出しの余分な*を消す
;; (setq org-hide-leading-stars t)

;---------------------------------------------------------------------------
;; Memoを格納するOrg Fileの設定
;; XXX: Prefix, Local Variable
(if (eq system-type 'windows-nt)
    (setq org-directory (concat (getenv "USERPROFILE") "/Dropbox/.org"))
  (setq org-directory "~/Dropbox/.org")
  ;; (setq org-directory "~/Repository/bitbucket/doc/.org")
  )
(setq org-default-notes-file "Notes.org")


;;; Remember
;;; 初期化
(org-remember-insinuate)
;;; Templates
;;; TODO: Make Templates
(setq org-remember-templates
      '(
        ("Note" ?n "** %?\n  %i\n  %a\n  %T\n" nil "Inbox")
        ("Todo" ?t "** TODO %?\n  %i\n  %a\n  %T\n" "TODO.org" "Tasks")
        ("Idea" ?i "** %?\n  %i\n  %a\n  %T\n" "Ideas.org" "Ideas")
        ))

;;;; Tag
;; (setq org-tag-alist
;;   '(("@OFFICE" . ?o) ("@HOME" . ?h) ("SHOPPING" . ?s)
;;     ("MAIL" . ?m) ("PROJECT" . ?p)))

;;; TODO状態
;; (setq org-use-fast-todo-selection t)
;; (setq org-todo-keywords
;;       '(
;;         (sequence "TODO(t)" "WAIT(w)" "|" "DONE(d)" "SOMEDAY(s)")
;;         ))
;; DONEの時刻を記録
;; (setq org-log-done 'time)


;;; Agenda表示の対象File
;; (setq org-agenda-files (list org-directory))
;;; Agenda表示で下線を用いる
;; (add-hook 'org-agenda-mode-hook '(lambda () (hl-line-mode 1)))
;; (setq hl-line-face 'underline)
;;; 標準の祝日を利用しない
;; (setq calendar-holidays nil)

;---------------------------------------------------------------------------
;;;; Open Applicaiton
;; Default
;; (
;;  (auto-mode . emacs)
;;  ("\\.mm\\'" . default)
;;  ("\\.x?html?\\'" . default)
;;  ("\\.pdf\\'" . default)
;;  )

;; (cond
;;   ;;;; Linux
;;   ((eq system-type 'gnu/linux)
;;    (setq org-file-apps '(
;;                          ("pdf"  . "zathura %s")
;;                          )))
;;   ;;;; Mac
;;   ((eq system-type 'darwin)
;;    (setq org-file-apps '(
;;                          )))
;;   ;;;; Windows
;;   ((eq system-type 'windows-nt)
;;    (setq org-file-apps '(
;;                          )))
;; )

;---------------------------------------------------------------------------
;;;; Browser

;---------------------------------------------------------------------------
;;;; HTML
;; Backgroundで変換
;; (setq org-export-run-in-background t)

;;
;; (setq org-export-html-style-include-scripts nil
;;       org-export-html-style-include-default nil)

;;
;; (setq org-export-html-style
;;       "<link rel=\"stylesheet\" type=\"text/css\" href=\"org-style.css\" />")

;; HTMLが存在すれば, 保存後にExport
;; (add-hook 'org-mode-hook
;;           (lambda ()
            ;; (add-hook 'after-save-hook
                      ;; (lambda ()
                        ;; (when (file-writable-p (replace-regexp-in-string "\..+$" ".html" (buffer-file-name)))
                          ;; 'org-export-as-html
                          ;; )
;; )
;; )
            ;; ))
;---------------------------------------------------------------------------
;;;; LaTeX
;; (require 'org-latex)
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
(add-to-list 'org-export-latex-classes
             '("beamer"
               "\\documentclass[compress,dvipdfm]{beamer}"
               org-beamer-sectioning
               )
             )
(setq org-export-latex-default-class "jarticle")
(cond
  ((and
     (executable-find "latexmk")
     (executable-find "perl"))
   (setq org-latex-to-pdf-process '("latexmk -pdfdvi %f")))
  ;; (setq org-latex-to-pdf-process '("latexmk -pdf %f")))
  ((executable-find "pdfplatex")
   (setq org-latex-to-pdf-process '("pdfplatex %f")))
 ;; ((executable-find "pdflatex")
 ;;  (setq org-latex-to-pdf-process '("pdflatex %f")))
 )

;;; 拡張子epsの取扱いについて
;; (setq org-export-latex-inline-image-extensions nil)
;; (add-to-list 'org-export-latex-inline-image-extensions "eps")

;---------------------------------------------------------------------------
;;;; babel
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

;---------------------------------------------------------------------------
;;;; S5
(add-to-list 'load-path "~/.emacs.d/public_repos/org-s5")
(load "org-export-as-s5")
(add-hook 'org-mode-hook
           (lambda()
             (define-key org-mode-map (kbd "C-c s") 'org-export-as-s5)
             ))

;; (setq org-export-htmlize-output-type 'CSS) ; CSSを変更するとき
;; (setq org-s5-theme "default")
(setq org-s5-theme "railscast")
;; (setq org-s5-theme "i18n")

;---------------------------------------------------------------------------
;;;; MobileOrg
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
