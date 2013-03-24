;;;; Edit Settings
;---------------------------------------------------------------------------
;;;; CommentOut
(setq comment-style 'multi-line) ; 複数行
;; (setq comment-style 'box)     ; BOX型

;---------------------------------------------------------------------------
;;; TAB KeyによるIndentではModeを問わず空白を挿入
(setq-default indent-tabs-mode nil)
;; (setq c-basic-offset 4)

;;;; TAB
;; (setq-default tab-width 4)
;; (setq tab-width 4)
;; (setq default-tab-width 4)
;; (setq-default tab-stop-list
;;               '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60))

;---------------------------------------------------------------------------
;;;; 矩形
;; TODO
(cua-mode t)
(setq cua-enable-cua-keys nil)

;---------------------------------------------------------------------------
;;;; hippie-expand
;; TODO
;; (global-set-key "\C-o" 'hippie-expand)
;; (setq hippie-expand-try-functions-list
;;       '(try-complete-file-name-partially
;;         try-complete-file-name
;;         try-expand-all-abbrevs
;;         try-expand-list try-expand-line
;;         try-expand-dabbrev
;;         try-expand-dabbrev-all-buffers
;;         try-expand-dabbrev-from-kill
;;         try-complete-lisp-symbol-partially
;;         try-complete-lisp-symbol))

;---------------------------------------------------------------------------
;;;; 保存時にShebangがあれば, Change Mode +x
;; (add-hook
;;  'after-save-hook
;;  '(lambda ()
;;     (save-restriction
;;       (widen)
;;       (if (string= "#!" (buffer-substring 1 (min 3 (point-max))))
;;           (let ((name (buffer-file-name)))
;;             (or (char-equal ?. (string-to-char (file-name-nondirectory name)))
;;                 (let ((mode (file-modes name)))
;;                   (set-file-modes name (logior mode (logand (/ mode 4) 73)))
;;                   (message (concat "Wrote " name " (+x)"))))
;;             )))))

(add-hook 'after-save-hook 'executable-make-buffer-file-executable-if-script-p)

;---------------------------------------------------------------------------
;;;; tags
;; TODO

;---------------------------------------------------------------------------
;;;; Template
(setq auto-insert-directory "~/.auto-insert")
(auto-insert-mode t)
(setq auto-insert-alist
      (append '(
                ;; (c-mode            . "template.c")
                ("\\.c$"           . "template.c")
                ;; ("\\.h$"           . "template.h")
                ;; (c++-mode          . "template.cpp")
                ;; ("\\.cpp$"         . "template.cpp")
                ;; ("\\.hpp$"         . "template.hpp")
                (shell-script-mode . "template.sh")
                (cperl-mode        . "template.pl")
                (ruby-mode         . "template.rb")
                (python-mode       . "template.py")
                (yatex-mode        . "template.tex")
                (org-mode          . "template.org")
                (markdown-mode     . "template.md")
                (gfm-mode          . "template.md")
                (powershell-mode   . "template.ps1")
                (batch-mode        . "template.bat")
                ) auto-insert-alist))

;---------------------------------------------------------------------------
;;;; Time Stamp
(require 'time-stamp)
;;; 保存時にTime-stamp
(if (not (memq 'time-stamp write-file-hooks))
    (setq write-file-hooks
          (cons 'time-stamp write-file-hooks)))

;;; 日本語で日付を入れたくないのでlocaleをCにする
;; (defun time-stamp-with-locale-c ()
;;   (let ((system-time-locale "C"))
;;     (time-stamp)
;;     nil))
;; (if (not (memq 'time-stamp-with-locale-c write-file-hooks))
;;     (add-hook 'write-file-hooks 'time-stamp-with-locale-c))

;;; Keyword (Default: start="Time-stamp:[   ]+\\\\?[\"<]+" end="\\\\?[\">]")
(setq time-stamp-start "Last Modified:[   ]+\\\\?[\"<]+")
(setq time-stamp-end "\\\\?[\">]")
;; (setq time-stamp-start "Last Modified:")
;; (setq time-stamp-end "\\\\?[\".]")

;;; Format
;; (setq time-stamp-format "%:y/%02m/%02d(%3a) %02H:%02M:%02S %Z")
(setq time-stamp-format "%:y/%02m/%02d %02H:%02M:%02S %Z")
;; (setq time-stamp-format " %:y/%02m/%02d %02H:%02M:%02S %Z")

;---------------------------------------------------------------------------
;;;; Clipboard
;;; emacs -nwのYank -> Clipboardができない
(when (eq window-system 'x)
  (setq x-select-enable-clipboard t)
  )
