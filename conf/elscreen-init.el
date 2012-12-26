;;;; ElScreen

;; バグ回避のため, Ubuntuではapt-get install
(unless
  (file-directory-p "/usr/share/emacs/site-lisp/elscreen")

  (add-to-list 'load-path "~/.emacs.d/public_repos/elscreen")
  ;;;; Add-On
  (require 'elscreen-dired)
  (require 'elscreen-w3m)
  (require 'elscreen-server)
  (require 'elscreen-speedbar)
  (require 'elscreen-color-theme)
  (require 'elscreen-dnd)
  (require 'elscreen-wl)
  )

(load "elscreen" "ElScreen" t)

;;;; タブバーの設定
;; タブの左側のXを消す
(setq elscreen-tab-display-kill-screen nil)
(unless (or (null window-system)
            (eq window-system 'ns))
  ;; nilで消す 数字で大きさ指定
  (setq elscreen-display-tab nil)
  ;; frame-titleにスクリーンの一覧を表示する
  (defun elscreen-frame-title-update ()
    (when (elscreen-screen-modified-p 'elscreen-frame-title-update)
      (let* ((screen-list (sort (elscreen-get-screen-list) '<))
             (screen-to-name-alist (elscreen-get-screen-to-name-alist))
             (title (mapconcat
                      (lambda (screen)
                        (format "[%d]%s %s " ;; 少し変更
                                screen (elscreen-status-label screen)
                                (get-alist screen screen-to-name-alist)))
                      screen-list " ")))
        (if (fboundp 'set-frame-name)
          (set-frame-name title)
          (setq frame-title-format title)))))

  (eval-after-load "elscreen"
                   '(add-hook 'elscreen-screen-update-hook 'elscreen-frame-title-update))
  )
