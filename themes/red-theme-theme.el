;;; themes/red-theme.el -*- lexical-binding: t; -*-


;; If you are distributing this theme, please replace this comment
;; with the appropriate license attributing the original VS Code
;; theme author.

(deftheme red-theme "Red.")


(let (
(color0 "#390000")
(color1 "#f8f8f8")
(color2 "#4d1414")
(color3 "#970000")
(color4 "#750000")
(color5 "#521919")
(color6 "#841414")
(color7 "#ffffff")
(color8 "#982828")
(color9 "#490000")
(color10 "#844b4b")
(color11 "#FFB454")
(color12 "#E7C0C0")
(color13 "#994646")
(color14 "#F12727")
(color15 "#CD8D8D")
(color16 "#FB9A4B")
(color17 "#949494")
(color18 "#480f0f")
(color19 "#440b0b"))


(custom-theme-set-faces
'red-theme


;; BASIC FACES
`(default ((t (:background ,color0 :foreground ,color1 ))))
`(hl-line ((t (:background ,color2 ))))
`(cursor ((t (:foreground ,color3 ))))
`(region ((t (:background ,color4 ))))
`(secondary-selection ((t (:background ,color5 ))))
`(fringe ((t (:background ,color0 ))))
`(mode-line-inactive ((t (:background ,color6 :foreground ,color7 ))))
`(mode-line ((t (:background ,color8 :foreground ,color7 ))))
`(minibuffer-prompt ((t (:background ,color9 ))))
`(vertical-border ((t (:foreground ,color10 ))))


;; FONT LOCK FACES
`(font-lock-builtin-face ((t (:foreground ,color11 :fontStyle :bold nil :italic nil :underline nil ))))
`(font-lock-comment-face ((t (:foreground ,color12 :fontStyle :italic t ))))
`(font-lock-constant-face ((t (:foreground ,color13 ))))
`(font-lock-keyword-face ((t (:foreground ,color14 :fontStyle :bold nil :italic nil :underline nil ))))
`(font-lock-string-face ((t (:foreground ,color15 :fontStyle :bold nil :italic nil :underline nil ))))
`(font-lock-variable-name-face ((t (:foreground ,color16 :fontStyle :italic t ))))


;; linum-mode
`(linum ((t (:foreground ,color17 ))))
`(linum-relative-current-face ((t (:foreground ,color17 ))))


;; display-line-number-mode
`(line-number ((t (:foreground ,color17 ))))
`(line-number-current-line ((t (:foreground ,color17 ))))


;; THIRD PARTY PACKAGE FACES


;; doom-modeline-mode
`(doom-modeline-bar ((t (:background ,color8 :foreground ,color7 ))))
`(doom-modeline-inactive-bar ((t (:background ,color6 :foreground ,color7 ))))


;; web-mode
`(web-mode-string-face ((t (:foreground ,color15 ))))
`(web-mode-html-tag-face ((t (:foreground ,color14 ))))
`(web-mode-html-tag-bracket-face ((t (:foreground ,color14 ))))


;; company-mode
`(company-tooltip ((t (:background ,color18 :foreground ,color7 ))))


;; org-mode
`(org-block ((t (:background ,color19 :foreground ,color7 ))))
`(org-block-begin-line ((t (:foreground ,color12 ))))))


(custom-theme-set-variables
  'red-theme
  '(linum-format " %3i "))


;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))


;;;###autoload
(defun red-theme-theme()
  "Apply the red-theme-theme."
  (interactive)
  (load-theme 'red-theme t))


(provide-theme 'red-theme)


;; Local Variables:
;; no-byte-compile: t
;; End:


;; Generated using https://github.com/nice/themeforge
;; Feel free to remove the above URL and this line.
