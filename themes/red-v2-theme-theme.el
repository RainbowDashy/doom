;;; themes/red-v2-theme.el -*- lexical-binding: t; -*-

;; Enhanced version of the Red theme, ported from VS Code Red theme
;; with comprehensive face definitions for Doom Emacs packages

(deftheme red-v2-theme "Red V2 - Enhanced Red theme with comprehensive face support.")


(let (
;; Base colors from VS Code Red theme
(color0 "#390000")    ; bg-main
(color1 "#f8f8f8")    ; fg-main
(color2 "#4d1414")    ; bg-hl-line
(color3 "#970000")    ; cursor
(color4 "#750000")    ; region
(color5 "#521919")    ; secondary-selection
(color6 "#841414")    ; modeline-inactive-bg
(color7 "#ffffff")    ; modeline-fg
(color8 "#982828")    ; modeline-bg
(color9 "#490000")    ; minibuffer-bg
(color10 "#844b4b")   ; border
(color11 "#FFB454")   ; builtin
(color12 "#E7C0C0")   ; comment
(color13 "#994646")   ; constant
(color14 "#F12727")   ; keyword
(color15 "#CD8D8D")   ; string
(color16 "#FB9A4B")   ; variable
(color17 "#949494")   ; line-number
(color18 "#480f0f")   ; tooltip-bg
(color19 "#440b0b")   ; org-block-bg

;; Extended colors for comprehensive theme support
(red-bright "#ff3333")
(red-dim "#cc5555")
(orange "#ff8800")
(yellow "#ffcc00")
(green "#88cc88")
(cyan "#88cccc")
(blue "#8888cc")
(magenta "#cc88cc")
(gray-dark "#666666")
(gray-mid "#888888")
(gray-light "#aaaaaa")
(bg-highlight "#5d1a1a")
(bg-darker "#2a0000")
(bg-lighter "#600000"))


(custom-theme-set-faces
'red-v2-theme


;; ========================================
;; BASIC FACES
;; ========================================
`(default ((t (:background ,color0 :foreground ,color1))))
`(hl-line ((t (:background ,color2))))
`(cursor ((t (:background ,color3))))
`(region ((t (:background ,color4))))
`(secondary-selection ((t (:background ,color5))))
`(fringe ((t (:background ,color0 :foreground ,gray-mid))))
`(vertical-border ((t (:foreground ,color10))))
`(minibuffer-prompt ((t (:foreground ,color14 :weight bold))))
`(tooltip ((t (:background ,color18 :foreground ,color1))))

;; Mode line
`(mode-line ((t (:background ,color8 :foreground ,color7 :box nil))))
`(mode-line-inactive ((t (:background ,color6 :foreground ,gray-light :box nil))))
`(mode-line-emphasis ((t (:foreground ,color14 :weight bold))))
`(mode-line-highlight ((t (:foreground ,color11))))
`(mode-line-buffer-id ((t (:foreground ,color7 :weight bold))))

;; Highlighting
`(highlight ((t (:background ,bg-highlight :foreground ,color1))))
`(lazy-highlight ((t (:background ,color4 :foreground ,color1))))
`(match ((t (:background ,color13 :foreground ,color1 :weight bold))))
`(shadow ((t (:foreground ,gray-dark))))
`(trailing-whitespace ((t (:background ,red-bright))))

;; Search
`(isearch ((t (:background ,color14 :foreground ,color0 :weight bold))))
`(isearch-fail ((t (:background ,red-bright :foreground ,color0))))

;; Parentheses matching
`(show-paren-match ((t (:background ,color13 :foreground ,color1 :weight bold))))
`(show-paren-mismatch ((t (:background ,red-bright :foreground ,color1 :weight bold))))

;; Links
`(link ((t (:foreground ,cyan :underline t))))
`(link-visited ((t (:foreground ,magenta :underline t))))

;; Messages
`(error ((t (:foreground ,red-bright :weight bold))))
`(warning ((t (:foreground ,orange :weight bold))))
`(success ((t (:foreground ,green :weight bold))))


;; ========================================
;; FONT LOCK FACES
;; ========================================
`(font-lock-builtin-face ((t (:foreground ,color11))))
`(font-lock-comment-face ((t (:foreground ,color12 :slant italic))))
`(font-lock-comment-delimiter-face ((t (:foreground ,color12 :slant italic))))
`(font-lock-doc-face ((t (:foreground ,color12 :slant italic))))
`(font-lock-constant-face ((t (:foreground ,color13))))
`(font-lock-function-name-face ((t (:foreground ,color11 :weight bold))))
`(font-lock-keyword-face ((t (:foreground ,color14 :weight bold))))
`(font-lock-string-face ((t (:foreground ,color15))))
`(font-lock-type-face ((t (:foreground ,cyan))))
`(font-lock-variable-name-face ((t (:foreground ,color16 :slant italic))))
`(font-lock-warning-face ((t (:foreground ,orange :weight bold))))
`(font-lock-negation-char-face ((t (:foreground ,red-bright :weight bold))))
`(font-lock-preprocessor-face ((t (:foreground ,magenta))))
`(font-lock-regexp-grouping-backslash ((t (:foreground ,yellow))))
`(font-lock-regexp-grouping-construct ((t (:foreground ,yellow))))


;; ========================================
;; LINE NUMBERS
;; ========================================
`(linum ((t (:foreground ,color17))))
`(linum-relative-current-face ((t (:foreground ,gray-light :weight bold))))
`(line-number ((t (:foreground ,color17 :background ,color0))))
`(line-number-current-line ((t (:foreground ,gray-light :background ,color2 :weight bold))))


;; ========================================
;; DOOM MODELINE
;; ========================================
`(doom-modeline-bar ((t (:background ,color14))))
`(doom-modeline-bar-inactive ((t (:background ,color6))))
`(doom-modeline-buffer-path ((t (:foreground ,color11 :weight bold))))
`(doom-modeline-buffer-file ((t (:foreground ,color1))))
`(doom-modeline-buffer-modified ((t (:foreground ,orange :weight bold))))
`(doom-modeline-project-dir ((t (:foreground ,cyan :weight bold))))
`(doom-modeline-project-root-dir ((t (:foreground ,color14 :weight bold))))
`(doom-modeline-info ((t (:foreground ,green))))
`(doom-modeline-urgent ((t (:foreground ,red-bright :weight bold))))
`(doom-modeline-warning ((t (:foreground ,orange :weight bold))))
`(doom-modeline-debug ((t (:foreground ,yellow))))


;; ========================================
;; SOLAIRE MODE (Different background for source vs UI buffers)
;; ========================================
`(solaire-default-face ((t (:background ,bg-darker))))
`(solaire-hl-line-face ((t (:background ,color2))))
`(solaire-org-hide-face ((t (:foreground ,bg-darker))))


;; ========================================
;; ORG MODE
;; ========================================
`(org-block ((t (:background ,color19 :foreground ,color1))))
`(org-block-begin-line ((t (:foreground ,color12 :background ,bg-darker :slant italic))))
`(org-block-end-line ((t (:foreground ,color12 :background ,bg-darker :slant italic))))
`(org-document-title ((t (:foreground ,color14 :weight bold :height 1.3))))
`(org-document-info ((t (:foreground ,cyan))))
`(org-document-info-keyword ((t (:foreground ,gray-mid))))
`(org-level-1 ((t (:foreground ,color14 :weight bold :height 1.2))))
`(org-level-2 ((t (:foreground ,color11 :weight bold :height 1.1))))
`(org-level-3 ((t (:foreground ,cyan :weight bold))))
`(org-level-4 ((t (:foreground ,color16 :weight bold))))
`(org-level-5 ((t (:foreground ,magenta))))
`(org-level-6 ((t (:foreground ,green))))
`(org-level-7 ((t (:foreground ,orange))))
`(org-level-8 ((t (:foreground ,color15))))
`(org-todo ((t (:foreground ,red-bright :weight bold))))
`(org-done ((t (:foreground ,green :weight bold))))
`(org-headline-done ((t (:foreground ,gray-mid :strike-through t))))
`(org-date ((t (:foreground ,cyan :underline t))))
`(org-tag ((t (:foreground ,yellow :weight bold))))
`(org-checkbox ((t (:foreground ,color14 :weight bold))))
`(org-code ((t (:foreground ,color11 :background ,color19))))
`(org-verbatim ((t (:foreground ,color15))))
`(org-special-keyword ((t (:foreground ,gray-mid))))
`(org-meta-line ((t (:foreground ,gray-mid :slant italic))))
`(org-link ((t (:foreground ,cyan :underline t))))


;; ========================================
;; MARKDOWN MODE
;; ========================================
`(markdown-header-face-1 ((t (:foreground ,color14 :weight bold :height 1.2))))
`(markdown-header-face-2 ((t (:foreground ,color11 :weight bold :height 1.1))))
`(markdown-header-face-3 ((t (:foreground ,cyan :weight bold))))
`(markdown-header-face-4 ((t (:foreground ,color16 :weight bold))))
`(markdown-header-face-5 ((t (:foreground ,magenta))))
`(markdown-header-face-6 ((t (:foreground ,green))))
`(markdown-code-face ((t (:foreground ,color11 :background ,color19))))
`(markdown-inline-code-face ((t (:foreground ,color11 :background ,color19))))
`(markdown-pre-face ((t (:foreground ,color1 :background ,color19))))
`(markdown-blockquote-face ((t (:foreground ,color12 :slant italic))))
`(markdown-link-face ((t (:foreground ,cyan :underline t))))
`(markdown-url-face ((t (:foreground ,blue :underline t))))
`(markdown-list-face ((t (:foreground ,color14))))
`(markdown-bold-face ((t (:weight bold))))
`(markdown-italic-face ((t (:slant italic))))


;; ========================================
;; IVY / COUNSEL / SWIPER
;; ========================================
`(ivy-current-match ((t (:background ,color4 :foreground ,color1 :weight bold))))
`(ivy-minibuffer-match-face-1 ((t (:foreground ,gray-light))))
`(ivy-minibuffer-match-face-2 ((t (:foreground ,color11 :weight bold))))
`(ivy-minibuffer-match-face-3 ((t (:foreground ,cyan :weight bold))))
`(ivy-minibuffer-match-face-4 ((t (:foreground ,magenta :weight bold))))
`(ivy-confirm-face ((t (:foreground ,green :weight bold))))
`(ivy-match-required-face ((t (:foreground ,red-bright :weight bold))))
`(ivy-remote ((t (:foreground ,blue))))
`(ivy-subdir ((t (:foreground ,cyan))))
`(counsel-active-mode ((t (:foreground ,green))))
`(swiper-match-face-1 ((t (:background ,color4))))
`(swiper-match-face-2 ((t (:background ,color13 :foreground ,color1))))
`(swiper-match-face-3 ((t (:background ,color14 :foreground ,color0))))
`(swiper-match-face-4 ((t (:background ,orange :foreground ,color0))))
`(swiper-line-face ((t (:background ,color2))))


;; ========================================
;; COMPANY MODE
;; ========================================
`(company-tooltip ((t (:background ,color18 :foreground ,color1))))
`(company-tooltip-selection ((t (:background ,color4 :foreground ,color1 :weight bold))))
`(company-tooltip-common ((t (:foreground ,color14 :weight bold))))
`(company-tooltip-common-selection ((t (:foreground ,color14 :weight bold))))
`(company-tooltip-annotation ((t (:foreground ,cyan))))
`(company-tooltip-annotation-selection ((t (:foreground ,cyan))))
`(company-scrollbar-bg ((t (:background ,color9))))
`(company-scrollbar-fg ((t (:background ,color10))))
`(company-preview ((t (:foreground ,gray-mid))))
`(company-preview-common ((t (:foreground ,color14))))


;; ========================================
;; MAGIT
;; ========================================
`(magit-section-heading ((t (:foreground ,color14 :weight bold))))
`(magit-section-highlight ((t (:background ,color2))))
`(magit-section-heading-selection ((t (:foreground ,orange :weight bold))))
`(magit-branch-local ((t (:foreground ,cyan :weight bold))))
`(magit-branch-remote ((t (:foreground ,green :weight bold))))
`(magit-branch-current ((t (:foreground ,blue :weight bold :box t))))
`(magit-tag ((t (:foreground ,yellow :weight bold))))
`(magit-hash ((t (:foreground ,gray-mid))))
`(magit-diff-file-heading ((t (:foreground ,color1 :weight bold))))
`(magit-diff-file-heading-highlight ((t (:background ,color2 :foreground ,color1 :weight bold))))
`(magit-diff-file-heading-selection ((t (:background ,color4 :foreground ,orange))))
`(magit-diff-hunk-heading ((t (:background ,color6 :foreground ,gray-light))))
`(magit-diff-hunk-heading-highlight ((t (:background ,color8 :foreground ,color1))))
`(magit-diff-context ((t (:foreground ,gray-mid))))
`(magit-diff-context-highlight ((t (:background ,color2 :foreground ,color1))))
`(magit-diff-added ((t (:background ,bg-darker :foreground ,green))))
`(magit-diff-added-highlight ((t (:background ,"#1a3a1a" :foreground ,green :weight bold))))
`(magit-diff-removed ((t (:background ,bg-darker :foreground ,red-bright))))
`(magit-diff-removed-highlight ((t (:background ,"#3a1a1a" :foreground ,red-bright :weight bold))))
`(magit-diffstat-added ((t (:foreground ,green))))
`(magit-diffstat-removed ((t (:foreground ,red-bright))))
`(magit-log-author ((t (:foreground ,orange))))
`(magit-log-date ((t (:foreground ,gray-mid))))
`(magit-log-graph ((t (:foreground ,gray-mid))))


;; ========================================
;; DIFF MODE
;; ========================================
`(diff-added ((t (:background ,bg-darker :foreground ,green))))
`(diff-removed ((t (:background ,bg-darker :foreground ,red-bright))))
`(diff-changed ((t (:background ,bg-darker :foreground ,yellow))))
`(diff-header ((t (:foreground ,cyan :weight bold))))
`(diff-file-header ((t (:foreground ,color14 :weight bold))))
`(diff-hunk-header ((t (:background ,color6 :foreground ,color1))))


;; ========================================
;; GIT-GUTTER / DIFF-HL
;; ========================================
`(git-gutter:added ((t (:foreground ,green :weight bold))))
`(git-gutter:deleted ((t (:foreground ,red-bright :weight bold))))
`(git-gutter:modified ((t (:foreground ,orange :weight bold))))
`(diff-hl-insert ((t (:background ,green :foreground ,green))))
`(diff-hl-delete ((t (:background ,red-bright :foreground ,red-bright))))
`(diff-hl-change ((t (:background ,orange :foreground ,orange))))


;; ========================================
;; FLYCHECK / FLYMAKE
;; ========================================
`(flycheck-error ((t (:underline (:style wave :color ,red-bright)))))
`(flycheck-warning ((t (:underline (:style wave :color ,orange)))))
`(flycheck-info ((t (:underline (:style wave :color ,cyan)))))
`(flymake-error ((t (:underline (:style wave :color ,red-bright)))))
`(flymake-warning ((t (:underline (:style wave :color ,orange)))))
`(flymake-note ((t (:underline (:style wave :color ,cyan)))))


;; ========================================
;; TREEMACS
;; ========================================
`(treemacs-root-face ((t (:foreground ,color14 :weight bold :height 1.2))))
`(treemacs-directory-face ((t (:foreground ,cyan))))
`(treemacs-file-face ((t (:foreground ,color1))))
`(treemacs-git-modified-face ((t (:foreground ,orange))))
`(treemacs-git-added-face ((t (:foreground ,green))))
`(treemacs-git-conflict-face ((t (:foreground ,red-bright :weight bold))))
`(treemacs-git-untracked-face ((t (:foreground ,gray-mid))))
`(treemacs-git-renamed-face ((t (:foreground ,magenta))))
`(treemacs-git-ignored-face ((t (:foreground ,gray-dark))))
`(treemacs-term-node-face ((t (:foreground ,cyan :weight bold))))
`(treemacs-tags-face ((t (:foreground ,color11))))


;; ========================================
;; DIRED
;; ========================================
`(dired-directory ((t (:foreground ,cyan :weight bold))))
`(dired-symlink ((t (:foreground ,magenta :slant italic))))
`(dired-flagged ((t (:foreground ,red-bright :weight bold))))
`(dired-marked ((t (:foreground ,yellow :weight bold))))
`(dired-header ((t (:foreground ,color14 :weight bold))))


;; ========================================
;; WHICH-KEY
;; ========================================
`(which-key-key-face ((t (:foreground ,color14 :weight bold))))
`(which-key-separator-face ((t (:foreground ,gray-mid))))
`(which-key-note-face ((t (:foreground ,cyan))))
`(which-key-command-description-face ((t (:foreground ,color1))))
`(which-key-group-description-face ((t (:foreground ,color11))))
`(which-key-local-map-description-face ((t (:foreground ,green))))


;; ========================================
;; RAINBOW DELIMITERS
;; ========================================
`(rainbow-delimiters-depth-1-face ((t (:foreground ,color14))))
`(rainbow-delimiters-depth-2-face ((t (:foreground ,color11))))
`(rainbow-delimiters-depth-3-face ((t (:foreground ,cyan))))
`(rainbow-delimiters-depth-4-face ((t (:foreground ,green))))
`(rainbow-delimiters-depth-5-face ((t (:foreground ,magenta))))
`(rainbow-delimiters-depth-6-face ((t (:foreground ,orange))))
`(rainbow-delimiters-depth-7-face ((t (:foreground ,yellow))))
`(rainbow-delimiters-depth-8-face ((t (:foreground ,blue))))
`(rainbow-delimiters-depth-9-face ((t (:foreground ,red-dim))))
`(rainbow-delimiters-unmatched-face ((t (:foreground ,red-bright :weight bold))))


;; ========================================
;; WEB MODE
;; ========================================
`(web-mode-html-tag-face ((t (:foreground ,color14))))
`(web-mode-html-tag-bracket-face ((t (:foreground ,color14))))
`(web-mode-html-attr-name-face ((t (:foreground ,color16))))
`(web-mode-html-attr-value-face ((t (:foreground ,color15))))
`(web-mode-string-face ((t (:foreground ,color15))))
`(web-mode-comment-face ((t (:foreground ,color12 :slant italic))))
`(web-mode-css-selector-face ((t (:foreground ,cyan))))
`(web-mode-css-property-name-face ((t (:foreground ,color11))))
`(web-mode-css-color-face ((t (:foreground ,color13))))
`(web-mode-current-element-highlight-face ((t (:background ,color2))))


;; ========================================
;; LSP MODE
;; ========================================
`(lsp-face-highlight-read ((t (:background ,color4 :underline t))))
`(lsp-face-highlight-write ((t (:background ,color4 :underline t :weight bold))))
`(lsp-face-highlight-textual ((t (:background ,color2))))
`(lsp-headerline-breadcrumb-path-face ((t (:foreground ,gray-light))))
`(lsp-headerline-breadcrumb-symbols-face ((t (:foreground ,color11 :weight bold))))


;; ========================================
;; TERM / VTERM / ESHELL
;; ========================================
`(term-color-black ((t (:foreground ,bg-darker :background ,bg-darker))))
`(term-color-red ((t (:foreground ,red-bright :background ,red-bright))))
`(term-color-green ((t (:foreground ,green :background ,green))))
`(term-color-yellow ((t (:foreground ,yellow :background ,yellow))))
`(term-color-blue ((t (:foreground ,blue :background ,blue))))
`(term-color-magenta ((t (:foreground ,magenta :background ,magenta))))
`(term-color-cyan ((t (:foreground ,cyan :background ,cyan))))
`(term-color-white ((t (:foreground ,color1 :background ,color1))))
`(eshell-prompt ((t (:foreground ,color14 :weight bold))))
`(eshell-ls-directory ((t (:foreground ,cyan :weight bold))))
`(eshell-ls-symlink ((t (:foreground ,magenta))))
`(eshell-ls-executable ((t (:foreground ,green))))


;; ========================================
;; HELM (Alternative to Ivy)
;; ========================================
`(helm-source-header ((t (:foreground ,color14 :weight bold :height 1.1))))
`(helm-selection ((t (:background ,color4 :foreground ,color1 :weight bold))))
`(helm-match ((t (:foreground ,color11 :weight bold))))
`(helm-candidate-number ((t (:foreground ,cyan))))
`(helm-separator ((t (:foreground ,gray-mid))))
`(helm-buffer-directory ((t (:foreground ,cyan :weight bold))))
`(helm-ff-directory ((t (:foreground ,cyan :weight bold))))
`(helm-ff-file ((t (:foreground ,color1))))
`(helm-ff-executable ((t (:foreground ,green))))
`(helm-ff-symlink ((t (:foreground ,magenta))))


;; ========================================
;; VERTICO / MARGINALIA
;; ========================================
`(vertico-current ((t (:background ,color4 :foreground ,color1 :weight bold))))
`(marginalia-file-name ((t (:foreground ,color1))))
`(marginalia-file-owner ((t (:foreground ,cyan))))
`(marginalia-file-priv-dir ((t (:foreground ,cyan :weight bold))))
`(marginalia-file-priv-read ((t (:foreground ,green))))
`(marginalia-file-priv-write ((t (:foreground ,orange))))
`(marginalia-file-priv-exec ((t (:foreground ,red-bright))))


;; ========================================
;; POPUP
;; ========================================
`(popup-face ((t (:background ,color18 :foreground ,color1))))
`(popup-selection-face ((t (:background ,color4 :foreground ,color1 :weight bold))))
`(popup-tip-face ((t (:background ,color19 :foreground ,yellow))))


;; ========================================
;; ALL-THE-ICONS
;; ========================================
`(all-the-icons-red ((t (:foreground ,red-bright))))
`(all-the-icons-dred ((t (:foreground ,red-dim))))
`(all-the-icons-green ((t (:foreground ,green))))
`(all-the-icons-blue ((t (:foreground ,blue))))
`(all-the-icons-cyan ((t (:foreground ,cyan))))
`(all-the-icons-yellow ((t (:foreground ,yellow))))
`(all-the-icons-orange ((t (:foreground ,orange))))
`(all-the-icons-purple ((t (:foreground ,magenta))))


;; ========================================
;; EDIFF
;; ========================================
;; Current diff regions
`(ediff-current-diff-A ((t (:background ,"#3a1a1a" :foreground ,red-bright :extend t))))
`(ediff-current-diff-B ((t (:background ,"#1a3a1a" :foreground ,green :extend t))))
`(ediff-current-diff-C ((t (:background ,"#3a3a1a" :foreground ,yellow :extend t))))
`(ediff-current-diff-Ancestor ((t (:background ,"#2a2a3a" :foreground ,blue :extend t))))

;; Fine (word-level) differences within current diff regions
`(ediff-fine-diff-A ((t (:background ,red-bright :foreground ,color0 :weight bold :extend t))))
`(ediff-fine-diff-B ((t (:background ,green :foreground ,color0 :weight bold :extend t))))
`(ediff-fine-diff-C ((t (:background ,yellow :foreground ,color0 :weight bold :extend t))))
`(ediff-fine-diff-Ancestor ((t (:background ,blue :foreground ,color0 :weight bold :extend t))))

;; Even diff regions (non-current differences)
`(ediff-even-diff-A ((t (:background ,color2 :foreground ,gray-light :extend t))))
`(ediff-even-diff-B ((t (:background ,color2 :foreground ,gray-light :extend t))))
`(ediff-even-diff-C ((t (:background ,color2 :foreground ,gray-light :extend t))))
`(ediff-even-diff-Ancestor ((t (:background ,color2 :foreground ,gray-light :extend t))))

;; Odd diff regions (non-current differences, alternating style)
`(ediff-odd-diff-A ((t (:background ,bg-darker :foreground ,gray-mid :extend t))))
`(ediff-odd-diff-B ((t (:background ,bg-darker :foreground ,gray-mid :extend t))))
`(ediff-odd-diff-C ((t (:background ,bg-darker :foreground ,gray-mid :extend t))))
`(ediff-odd-diff-Ancestor ((t (:background ,bg-darker :foreground ,gray-mid :extend t))))


;; ========================================
;; COMPILATION
;; ========================================
`(compilation-error ((t (:foreground ,red-bright :weight bold))))
`(compilation-warning ((t (:foreground ,orange :weight bold))))
`(compilation-info ((t (:foreground ,cyan))))
`(compilation-line-number ((t (:foreground ,gray-mid))))
`(compilation-mode-line-exit ((t (:foreground ,green :weight bold))))
`(compilation-mode-line-fail ((t (:foreground ,red-bright :weight bold))))


;; ========================================
;; WIDGET
;; ========================================
`(widget-field ((t (:background ,color18 :foreground ,color1))))
`(widget-button ((t (:foreground ,cyan :weight bold))))
`(widget-button-pressed ((t (:foreground ,color14 :weight bold))))


;; ========================================
;; CUSTOM
;; ========================================
`(custom-button ((t (:background ,color18 :foreground ,color1 :box (:line-width 2 :style released-button)))))
`(custom-button-pressed ((t (:background ,color4 :foreground ,color1 :box (:line-width 2 :style pressed-button)))))
`(custom-variable-tag ((t (:foreground ,cyan :weight bold))))
`(custom-group-tag ((t (:foreground ,color14 :weight bold :height 1.1))))


))


(custom-theme-set-variables
  'red-v2-theme
  '(linum-format " %3i "))


;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))


;;;###autoload
(defun red-v2-theme-theme()
  "Apply the red-v2-theme."
  (interactive)
  (load-theme 'red-v2-theme t))


(provide-theme 'red-v2-theme)


;; Local Variables:
;; no-byte-compile: t
;; End:

;; Enhanced version based on VS Code Red theme
;; Original conversion by https://github.com/nice/themeforge
;; Enhanced with comprehensive Doom Emacs face support
