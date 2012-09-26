;;;; kill-ringの視覚化
; (require 'browse-kill-ring)
;; M-yは今まで通り
(browse-kill-ring-default-keybindings)
;; 全てのitemをそれぞれ1行で表示
; (setq browse-kill-ring-display-style 'one-line)
;; browse-kill-ring 終了時にバッファを kill する
; (setq browse-kill-ring-quit-action 'kill-and-delete-window)
;; 必要に応じて browse-kill-ring のウィンドウの大きさを変更する
(setq browse-kill-ring-resize-window t)
;; 現在選択中の kill-ring のハイライトする
(setq browse-kill-ring-highlight-current-entry t)
;; kill-ring の内容を表示する際の区切りを指定する
;(setq browse-kill-ring-separator "-------")
;; 区切り文字のフェイスを指定する
;(setq browse-kill-ring-separator-face 'region)
;; 一覧で表示する文字数を指定する． nil ならすべて表示される．
;(setq browse-kill-ring-maximum-display-length 100)
;; C-g で終了
(add-hook 'browse-kill-ring-hook
          (lambda ()
            (define-key browse-kill-ring-mode-map "\C-g" 'browse-kill-ring-quit)
            ))

;; kill-ring に同じ内容の文字列を複数入れない
(defadvice kill-new (before ys:no-kill-new-duplicates activate)
           (setq kill-ring (delete (ad-get-arg 0) kill-ring)))
