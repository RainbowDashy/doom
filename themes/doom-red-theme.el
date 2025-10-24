;;; doom-red-theme.el --- inspired by VS Code Red theme -*- lexical-binding: t; no-byte-compile: t; -*-
;;
;; Added: October 24, 2025
;; Author: p0ny <https://github.com/p0ny>
;; Maintainer: p0ny
;; Source: https://github.com/nice/themeforge
;;
;;; Commentary:
;;
;; A dark red theme inspired by the VS Code Red theme, ported to Doom Emacs.
;;
;;; Code:

(require 'doom-themes)


;;
;;; Variables

(defgroup doom-red-theme nil
  "Options for the `doom-red' theme."
  :group 'doom-themes)

(defcustom doom-red-brighter-modeline nil
  "If non-nil, more vivid colors will be used to style the mode-line."
  :group 'doom-red-theme
  :type 'boolean)

(defcustom doom-red-brighter-comments nil
  "If non-nil, comments will be highlighted in more vivid colors."
  :group 'doom-red-theme
  :type 'boolean)

(defcustom doom-red-comment-bg doom-red-brighter-comments
  "If non-nil, comments will have a subtle background."
  :group 'doom-red-theme
  :type 'boolean)

(defcustom doom-red-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line.
Can be an integer to determine the exact padding."
  :group 'doom-red-theme
  :type '(choice integer boolean))


;;
;;; Theme definition

(def-doom-theme doom-red
  "A dark theme inspired by VS Code Red theme"

  ;; name        default   256       16
  ((bg         '("#390000" "#390000" "black"        ))
   (fg         '("#f8f8f8" "#f8f8f8" "brightwhite"  ))

   ;; These are off-color variants of bg/fg, used primarily for `solaire-mode',
   ;; but can also be useful as a basis for subtle highlights (e.g. for hl-line
   ;; or region), especially when paired with the `doom-darken', `doom-lighten',
   ;; and `doom-blend' helper functions.
   (bg-alt     '("#2a0000" "#2a0000" "black"        ))
   (fg-alt     '("#E7C0C0" "#E7C0C0" "white"        ))

   ;; These should represent a spectrum from bg to fg, where base0 is a starker
   ;; bg and base8 is a starker fg. For example, if bg is light grey and fg is
   ;; dark grey, base0 should be white and base8 should be black.
   (base0      '("#1a0000" "#1a0000" "black"        ))
   (base1      '("#2a0000" "#2a0000" "brightblack"  ))
   (base2      '("#4d1414" "#4d1414" "brightblack"  ))
   (base3      '("#521919" "#521919" "brightblack"  ))
   (base4      '("#666666" "#666666" "brightblack"  ))
   (base5      '("#888888" "#888888" "brightblack"  ))
   (base6      '("#aaaaaa" "#aaaaaa" "brightwhite"  ))
   (base7      '("#E7C0C0" "#E7C0C0" "brightwhite"  ))
   (base8      '("#f8f8f8" "#f8f8f8" "white"        ))

   (grey       base4)
   (red        '("#F12727" "#F12727" "red"          ))
   (orange     '("#FB9A4B" "#FB9A4B" "brightred"    ))
   (green      '("#88cc88" "#88cc88" "green"        ))
   (teal       '("#88cccc" "#88cccc" "brightgreen"  ))
   (yellow     '("#ffcc00" "#ffcc00" "yellow"       ))
   (blue       '("#8888cc" "#8888cc" "brightblue"   ))
   (dark-blue  '("#6666aa" "#6666aa" "blue"         ))
   (magenta    '("#cc88cc" "#cc88cc" "brightmagenta"))
   (violet     '("#cc88cc" "#cc88cc" "magenta"      ))
   (cyan       '("#88cccc" "#88cccc" "brightcyan"   ))
   (dark-cyan  '("#66aaaa" "#66aaaa" "cyan"         ))

   ;; These are the "universal syntax classes" that doom-themes establishes.
   ;; These *must* be included in every doom themes, or your theme will throw an
   ;; error, as they are used in the base theme defined in doom-themes-base.
   (highlight      red)
   (vertical-bar   (doom-darken base1 0.1))
   (selection      base3)
   (builtin        orange)
   (comments       (if doom-red-brighter-comments base7 base6))
   (doc-comments   (doom-lighten (if doom-red-brighter-comments base7 base6) 0.25))
   (constants      '("#994646" "#994646" "brightred"))
   (functions      orange)
   (keywords       red)
   (methods        orange)
   (operators      red)
   (type           cyan)
   (strings        '("#CD8D8D" "#CD8D8D" "brightmagenta"))
   (variables      orange)
   (numbers        constants)
   (region         (doom-lighten base3 0.15))
   (error          '("#ff3333" "#ff3333" "red"))
   (warning        orange)
   (success        green)
   (vc-modified    orange)
   (vc-added       green)
   (vc-deleted     red)

   ;; These are extra color variables used only in this theme; i.e. they aren't
   ;; mandatory for derived themes.
   (modeline-fg              fg)
   (modeline-fg-alt          base6)
   (modeline-bg              (if doom-red-brighter-modeline
                                 "#982828"
                               "#982828"))
   (modeline-bg-alt          (if doom-red-brighter-modeline
                                 "#841414"
                               "#841414"))
   (modeline-bg-inactive     "#841414")
   (modeline-bg-inactive-alt "#521919")

   (-modeline-pad
    (when doom-red-padded-modeline
      (if (integerp doom-red-padded-modeline) doom-red-padded-modeline 4))))


  ;;;; Base theme face overrides
  (((line-number &override) :foreground "#949494")
   ((line-number-current-line &override) :foreground base6 :weight 'bold)
   ((font-lock-comment-face &override)
    :slant 'italic
    :background (if doom-red-comment-bg (doom-lighten bg 0.05) 'unspecified))
   ((font-lock-doc-face &override) :slant 'italic)
   ((font-lock-builtin-face &override) :foreground "#FFB454")
   ((font-lock-function-name-face &override) :foreground "#FFB454" :weight 'bold)
   ((font-lock-variable-name-face &override) :slant 'italic)
   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))
   (mode-line-emphasis :foreground (if doom-red-brighter-modeline base8 highlight))

   ;;;; CSS mode <built-in> / scss-mode
   (css-proprietary-property :foreground orange)
   (css-property             :foreground cyan)
   (css-selector             :foreground red)
   ;;;; doom-modeline
   (doom-modeline-bar :background (if doom-red-brighter-modeline modeline-bg highlight))
   (doom-modeline-buffer-file :inherit 'mode-line-buffer-id :weight 'bold)
   (doom-modeline-buffer-path :inherit 'mode-line-emphasis :weight 'bold)
   (doom-modeline-buffer-modified :foreground orange :weight 'bold)
   (doom-modeline-project-dir :foreground cyan :weight 'bold)
   (doom-modeline-project-root-dir :foreground red :weight 'bold)
   ;;;; ediff <built-in>
   (ediff-current-diff-A        :background "#3a1a1a" :extend t)
   (ediff-current-diff-B        :background "#1a3a1a" :extend t)
   (ediff-current-diff-C        :background "#3a3a1a" :extend t)
   (ediff-fine-diff-A           :background "#5a2a2a" :extend t)
   (ediff-fine-diff-B           :background "#2a5a2a" :extend t)
   (ediff-fine-diff-C           :background "#5a5a2a" :extend t)
   ;;;; elscreen
   (elscreen-tab-other-screen-face :background "#353a42" :foreground "#1e2022")
   ;;;; grep <built-in>
   (grep-match :background red :foreground bg :weight 'bold)
   ;;;; ivy
   (ivy-current-match :background "#982828" :foreground fg :weight 'bold)
   (ivy-minibuffer-match-face-2 :foreground orange :weight 'bold)
   ;;;; LaTeX-mode
   (font-latex-math-face :foreground green)
   ;;;; magit
   (magit-diff-added              :background "#1a3a1a" :foreground green)
   (magit-diff-added-highlight    :background "#1a3a1a" :foreground green :weight 'bold)
   (magit-diff-removed            :background "#3a1a1a" :foreground red)
   (magit-diff-removed-highlight  :background "#3a1a1a" :foreground red :weight 'bold)
   (magit-section-heading         :foreground red :weight 'bold)
   (magit-branch-local            :foreground cyan :weight 'bold)
   (magit-branch-remote           :foreground green :weight 'bold)
   (magit-branch-current          :foreground blue :weight 'bold :box t)
   ;;;; markdown-mode
   (markdown-markup-face :foreground base6)
   (markdown-header-face :inherit 'bold :foreground red)
   ((markdown-code-face &override) :background "#440b0b")
   (markdown-inline-code-face :background "#440b0b" :foreground "#FFB454")
   ;;;; org <built-in>
   ((org-block &override) :background "#440b0b")
   ((org-block-begin-line &override) :background bg-alt :slant 'italic)
   ((org-block-end-line &override) :background bg-alt :slant 'italic)
   (org-level-1 :foreground red :weight 'bold :height 1.2)
   (org-level-2 :foreground orange :weight 'bold :height 1.1)
   (org-level-3 :foreground cyan :weight 'bold)
   (org-level-4 :foreground variables :weight 'bold)
   (org-todo :foreground "#ff3333" :weight 'bold)
   (org-done :foreground green :weight 'bold)
   ;;;; rainbow-delimiters
   (rainbow-delimiters-depth-1-face :foreground red)
   (rainbow-delimiters-depth-2-face :foreground orange)
   (rainbow-delimiters-depth-3-face :foreground cyan)
   (rainbow-delimiters-depth-4-face :foreground green)
   (rainbow-delimiters-depth-5-face :foreground magenta)
   (rainbow-delimiters-depth-6-face :foreground orange)
   (rainbow-delimiters-depth-7-face :foreground yellow)
   ;;;; rjsx-mode
   (rjsx-tag :foreground red)
   (rjsx-attr :foreground orange :slant 'italic :weight 'medium)
   ;;;; solaire-mode
   (solaire-default-face :inherit 'default :background bg-alt)
   (solaire-hl-line-face :background base2)
   ;;;; treemacs
   (treemacs-root-face :foreground red :weight 'bold :height 1.2)
   (treemacs-directory-face :foreground cyan)
   (treemacs-git-modified-face :foreground orange)
   (treemacs-git-added-face :foreground green)
   (treemacs-git-conflict-face :foreground "#ff3333" :weight 'bold)
   ;;;; web-mode
   (web-mode-html-tag-face :foreground red)
   (web-mode-html-attr-name-face :foreground orange)
   (web-mode-html-attr-value-face :foreground strings)
   (web-mode-current-element-highlight-face :background base2))

  ;;;; Base theme variable overrides-
  ())

;;; doom-red-theme.el ends here
