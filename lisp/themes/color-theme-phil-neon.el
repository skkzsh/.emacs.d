(eval-when-compile
  (require 'color-theme))

(defun color-theme-phil-neon ()
  "Color theme by Phil Piwonka, based off monokai textmate theme. BITE! philpiwonka@gmail.com"
  "Credit where credit is due:"
  " Original Textmate theme: http://www.monokai.nl/blog/2006/07/15/textmate-color-theme/"
  " Emacs starting point from here: http://jaguilar.posterous.com/i-get-so-tired-of-searching-fo"
; Magenta: #F92672
; Blue: #66D9EF
; Dark grey: #75715E
; Green: #A6E22E
; Yellow: #E6DB74
; Orange: #FD971F
; Foreground: #F8F8F2
  (interactive)
  (color-theme-install
   '(color-theme-wnka-neon
     ((background-color . "Grey15")
      (background-mode . dark)
      (border-color . "white")
      (cursor-color . "green")
      (foreground-color . "#F8F8F2")
      (mouse-color . "black"))

     ; Kind of a weird way to do this, but oh well
     (wnka-magenta-face ((t (:foreground "#F92672"))))
     (wnka-blue-face ((t (:foreground "#66D9EF"))))
     (wnka-darkgrey-face ((t (:foreground "#75715E"))))
     (wnka-green-face ((t (:foreground "#A6E22E"))))
     (wnka-yellow-face ((t (:foreground "#E6DB74"))))
     (wnka-orange-face ((t (:foreground "#FD971F"))))
     (wnka-foreground-face ((t (:foreground "#F8F8F2"))))

     (blank-space-face ((t (:background "LightGray"))))
     (blank-tab-face ((t (:background "cornsilk" :foreground "black"))))
     (default ((t (:background "#272822" :inherit wnka-foreground-face ))))
     (fringe ((t (:background "gray10"))))
     (bold ((t (:bold t :foreground "white"))))
     (bold-italic ((t (:italic t :bold t))))
     (calendar-today-face ((t (:underline t))))
     (font-lock-builtin-face ((t (:bold t :inherit wnka-blue-face))))
     (font-lock-preprocessor-face ((t (:inherit font-lock-builtin-face :foreground "#66d9ef"))))
     (font-lock-comment-face ((t (:inherit wnka-darkgrey-face))))
     (font-lock-constant-face ((t (:inherit wnka-foreground-face))))
     (font-lock-function-name-face ((t (:inherit wnka-green-face))))
     (font-lock-keyword-face ((t (:inherit wnka-magenta-face))))
     (font-lock-string-face ((t (:inherit wnka-yellow-face))))
     (font-lock-type-face ((t (:inherit wnka-blue-face))))
     (font-lock-variable-name-face ((t (:inherit wnka-orange-face))))
     (font-lock-warning-face ((t (:bold t :foreground "gold"))))
     (ido-only-match ((t (:bold t :inherit wnka-green-face))))
     (ido-first-match ((t (:inherit wnka-green-face))))
     (mode-line ((t (:background "#44b7bd" :inherit wnka-foreground-face :box (:line-width 1 :style released-button)))))
     (mode-line-inactive ((t (:background "gray20" :foreground "gray80" :box (:line-width 1 :style released-button)))))
     (highlight ((t (:background "#38372D"))))

     (elscreen-tab-background-face ((t (:background "Gray50"))))
     (elscreen-tab-other-screen-face ((t (:background "Gray85" :foreground "Gray50" :box (:line-width 1 :style released-button)))))
     (elscreen-tab-current-screen-face ((t (:background "Gray95" :foreground "black" :box (:line-width 1 :style released-button)))))

     (minibuffer-prompt ((t (:inherit wnka-orange-face))))

     (twittering-username-face ((t (:inherit wnka-green-face))))
     (twittering-uri-face ((t (:inherit wnka-darkgrey-face))))
     (org-hide ((t (:foreground "#272822"))))
     (org-link ((t (:underline t :inherit wnka-darkgrey-face))))
     (org-done ((t (:bold t :foreground "OrangeRed1" :background "OrangeRed4" :box (:line-width 1 :style released-button)))))
     (org-todo ((t (:bold t :background "CadetBlue4" :foreground "CadetBlue1" :box (:line-width 1 :style released-button)))))
     (org-agenda-date ((t (:bold t :underline t :inherit wnka-magenta-face))))
     (org-agenda-date-weekend ((t (:inherit org-agenda-date))))
     (org-level-1 ((t (:underline t :bold t :inherit wnka-green-face))))
     (org-level-2 ((t (:foreground "white"))))
     (org-level-3 ((t (:foreground "white"))))
     (org-level-4 ((t (:foreground "white"))))
     (org-scheduled-today ((t (:inherit wnka-foreground-face))))
     (org-verbatim ((t (:inherit wnka-foreground-face))))
     (org-code ((t (:inherit wnka-foreground-face))))
     (org-scheduled ((t (:inherit wnka-foreground-face))))
     (org-scheduled-previously ((t (:inherit wnka-orange-face))))
     (org-upcoming-deadline ((t (:inherit wnka-orange-face))))
     (org-warning ((t (:inherit wnka-orange-face))))
     (org-date ((t (:underline t :inherit wnka-blue-face))))
     (org-special-keyword ((t (:bold t :inherit wnka-darkgrey-face))))
     (org-tag ((t (:inherit wnka-darkgrey-face ))))
     
     (flyspell-duplicate ((t (:underline "#66D9EF"))))
     (flyspell-incorrect ((t (:underline "#66D9EF"))))

     (egg-branch ((((class color) (background dark)) (:inherit egg-header :inherit wnka-magenta-face :bold t))))
     (egg-branch-mono ((((class color) (background dark)) (:inherit bold :inherit wnka-orange-face))))
     (egg-diff-add ((((class color) (background dark)) (:inherit wnka-green-face))))
     (egg-diff-file-header ((((class color) (background dark)) (:inherit wnka-yellow-face))))
     (egg-diff-hunk-header ((((class color) (background dark)) (:inherit wnka-darkgrey-face))))
     (egg-diff-none ((((class color) (background dark)) (:inherit wnka-foreground-face))))
     (egg-header ((t (:inherit nil))))
     (egg-help-header-2 ((((class color) (background dark)) (:inherit egg-text-1 :inherit wnka-darkgrey-face))))
     (egg-help-key ((t (:inherit egg-text-base :bold t :underline t))))
     (egg-section-title ((((class color) (background dark)) (:inherit egg-header :inherit wnka-blue-face :bold t))))
     (egg-text-2 ((t (:inherit egg-text-base))))
     (egg-text-3 ((t (:inherit egg-text-base))))
     (egg-text-4 ((t (:inherit egg-text-base))))
     (egg-text-base ((((class color) (background dark)) (:inherit wnka-foreground-face))))
     (egg-text-help ((t (:inherit egg-text-base))))

     (highlight ((t (:background "darkslategray" :foreground "wheat"))))
     (highlight-changes-delete-face ((t (:underline t :foreground "red"))))
     (highlight-changes-face ((t (:foreground "red"))))
     (highline-face ((t (:background "gray35"))))
     (holiday-face ((t (:background "red"))))
     (info-menu-5 ((t (:underline t))))
     (info-node ((t (:italic t :bold t :foreground "yellow"))))
     (info-xref ((t (:bold t :foreground "plum"))))
     (italic ((t (:italic t))))
     (lazy-highlight-face ((t (:bold t :foreground "dark magenta"))))
     (linemenu-face ((t (:background "gray30"))))
     (makefile-space-face ((t (:background "hotpink"))))
     (paren-mismatch-face ((t (:bold t :background "white" :foreground "red"))))
     (paren-no-match-face ((t (:bold t :background "white" :foreground "red"))))
     (region ((t (:background "slategrey" ))))
     (secondary-selection ((t (:background "deepskyblue4"))))
     (show-paren-match-face ((t (:background "black" ))))
     (show-paren-mismatch-face ((t (:bold t :background "red" :foreground "white"))))
     (underline ((t (:underline t))))
     (yas/field-highlight-face ((t (:background "black"))))
     )))


