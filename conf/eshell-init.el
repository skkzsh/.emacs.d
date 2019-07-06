;;;; Eshell

;; 補完時に、大文字小文字を区別しない
(setq eshell-cmpl-ignore-case t)

;; 確認なしでHistory保存
(setq eshell-ask-to-save-history (quote always))

;; Keybind
(add-hook 'eshell-mode-hook
          (lambda ()
            (define-key eshell-mode-map "\C-a" 'eshell-bol)
            ))

;; alias
(eval-after-load "em-alias"
                 '(progn
                    (eshell/alias "ll" "ls -lh")
                    (eshell/alias "la" "ls -a")
                    (eshell/alias "lla" "ls -lha")
                    (eshell/alias ".." "cd ..")
                    (eshell/alias "...." "cd ../..")
                    (eshell/alias "cd.." "cd ..")
                    (eshell/alias "cd...." "cd ../..")
                    (eshell/alias "cd-" "cd -")
                    (eshell/alias "rm" "rm -i")
                    (eshell/alias "mv" "mv -i")
                    (eshell/alias "cp" "cp -i")
                    (eshell/alias "h" "history")
                    (eshell/alias "g" "gvim")
                    (eshell/alias "p" "ping")
                    (eshell/alias "ic" "ipconfig")
                    (when (eq system-type 'windows-nt)
                      (eshell/alias "hoge" "plink hoge")
                      )
                    ))
