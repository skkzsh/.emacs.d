;;;; anything
;; TODO
(when (require 'anything-startup nil t)

  ;;; Keybind
  (global-set-key (kbd "C-;") 'anything-filelist+)
  ;; (global-set-key (kbd "C-;") 'anything)
  (global-set-key (kbd "M-y") 'anything-show-kill-ring)
  ;; (define-key anything-map "\C-h" 'delete-backward-char)

;;; *scratch*, *eshell* 等の、ファイルと関連付けられていないバッファを候補から除外 (必要な場合、switch-to-buffer)
;; (setq anything-c-boring-buffer-regexp
;;       (rx "*" (+ not-newline) "*"))

;;; カレントバッファを候補から除外
;; (setq anything-allow-skipping-current-buffer t)

;;; Source
;; (setq anything-sources
;;       '(anything-c-source-buffers+
;;         anything-c-source-colors
;;         anything-c-source-recentf
;;         anything-c-source-man-pages
;;         anything-c-source-emacs-commands
;;         anything-c-source-emacs-functions
;;         anything-c-source-files-in-current-dir
;;         ))

  ;;; Alphabetで補完選択
  (setq anything-enable-shortcuts 'alphabet)

  ;;;; c-moccur
  ;; TODO
  (when (require 'color-moccur nil t)

    (add-to-list 'load-path "~/.emacs.d/bundle/anything-c-moccur/trunk")
    (require 'anything-c-moccur)

    ;;; カスタマイズ可能変数の設定(M-x customize-group anything-c-moccur でも設定可能)
    (setq anything-c-moccur-anything-idle-delay 0.2 ; `anything-idle-delay'
          anything-c-moccur-higligt-info-line-flag t ; `anything-c-moccur-dmoccur'などのコマンドでバッファの情報をハイライトする
          anything-c-moccur-enable-auto-look-flag t ; 現在選択中の候補の位置を他のwindowに表示する
          anything-c-moccur-enable-initial-pattern t) ; `anything-c-moccur-occur-by-moccur'の起動時にポイントの位置の単語を初期パターンにする

    (global-set-key (kbd "M-o") 'anything-c-moccur-occur-by-moccur) ; バッファ内
    (global-set-key (kbd "C-M-o") 'anything-c-moccur-dmoccur) ; ディレクトリ
    (add-hook 'dired-mode-hook ; dired
              '(lambda ()
                 (local-set-key (kbd "O") 'anything-c-moccur-dired-do-moccur-by-moccur)))
    )

  ;;;; Ack
  ;; (when (executable-find "ack")
  ;;   (when (require 'anything-ack nil t)
  ;;     (setq anything-ack-command "ack --nocolor --nogroup ")
  ;;     )
  ;;  )

)
