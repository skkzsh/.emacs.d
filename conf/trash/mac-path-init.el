;;---------------------------------------------------------------------------
;; MacでPathを追加
;; TODO: ShellとPathを共有
; (when (eq window-system 'ns)
;   (dolist (dir (list
;                   "/usr/texbin"
;                   "/usr/local/bin"
;                   "/Applications/Xpdf.app"
;                   "/Applications/Xpdf.app/bin"
;                   "/Applications/gnuplot.app"
;                   "/Applications/gnuplot.app/bin"
;                   "/Applications/Ghostscript.app"
;                   "/Applications/Ghostscript.app/bin"
;                   (concat (getenv "HOME") "/bin")
;                   ;; (concat (getenv "HOME") "/perl5/perlbrew/perls/perl-5.16.0/bin")
;                   ;; (concat (getenv "HOME") "/.pythonbrew/pythons/Python-2.7.3/bin")
;                   ;; (concat (getenv "HOME") "/.rbenv/shims")
;                   ;; (concat (getenv "HOME") "/.nodebrew/current/bin")
;                   (concat (getenv "HOME") "/.cabal/bin")
;                  ))
;     (when (and
;            (file-exists-p dir)
;            (not (member dir exec-path))
;            )
;       (setenv "PATH" (concat dir ":" (getenv "PATH")))
;       (setq exec-path (append (list dir) exec-path))
;       )
;     )
;   )
