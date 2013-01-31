;;;; バッファの切替を楽にする
(iswitchb-mode t)

;;; バッファの選択
(add-hook 'iswitchb-define-mode-map-hook
          'iswitchb-my-keys)
(defun iswitchb-my-keys ()
  (define-key iswitchb-mode-map (kbd "SPC") 'iswitchb-next-match)
  (define-key iswitchb-mode-map (kbd "C-s") 'iswitchb-next-match)
  (define-key iswitchb-mode-map (kbd "C-r") 'iswitchb-prev-match)
  (define-key iswitchb-mode-map (kbd "<right>") 'iswitchb-next-match)
  (define-key iswitchb-mode-map (kbd "<left>") 'iswitchb-prev-match)
  )

;;; 候補がなければ find-file
;; (defun iswitchb-possible-new-buffer (buf)
;;  "Possibly create and visit a new buffer called BUF."
;;  (interactive)
;;  (message (format
;;            "No buffer matching `%s', "
;;            buf))
;;  (sit-for 1)
;;  (call-interactively 'find-file buf))
;;
;; (defun iswitchb-buffer (arg)
;;  "Switch to another buffer.
;;
;; The buffer name is selected interactively by typing a substring.  The
;; buffer is displayed according to `iswitchb-default-method' -- the
;; default is to show it in the same window, unless it is already visible
;; in another frame.
;; For details of keybindings, do `\\[describe-function] iswitchb'."
;;  (interactive "P")
;;  (if arg
;;      (call-interactively 'switch-to-buffer)
;;    (setq iswitchb-method iswitchb-default-method)
;;    (iswitchb)))

;;; 選択中の内容を表示
(defadvice iswitchb-exhibit
           (after
             iswitchb-exhibit-with-display-buffer
             activate)
           "選択している buffer を window に表示してみる。"
           (when (and
                   (eq iswitchb-method iswitchb-default-method)
                   iswitchb-matches)
             (select-window
               (get-buffer-window (cadr (buffer-list))))
             (let ((iswitchb-method 'samewindow))
               (iswitchb-visit-buffer
                 (get-buffer (car iswitchb-matches))))
             (select-window (minibuffer-window))))

;;;; M-x の補完をiswitchbのようにする
;;;; M-x の時はminibuf-isearchが無効になる
(require 'mcomplete)
(load "mcomplete-history") ; 補完をヒストリからだけにする
(turn-on-mcomplete-mode)
;;; 利用するmethodを限定する
;; (setq mcomplete-default-method-set
;;       '(mcomplete-prefix-method))
;;       '(mcomplete-substr-method))