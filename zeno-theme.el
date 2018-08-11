;;; zeno-theme.el --- A dark theme using different shades of blue

;; Copyright (C) 2017 Bharat Joshi

;; Author: Bharat Joshi <jbharat@outlook.com>
;; Maintainer: Bharat Joshi <jbharat@outlook.com>
;; URL: https://github.com/jbharat/zeno-theme
;; Package-Version: 20180211.1557
;; Created: 22th July 2017
;; Keywords: faces, theme, dark, blue
;; Version: 1.0.2
;; Package-Requires: ((emacs "24"))

;; License: GPL3

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; This program is distributed in the hope that it will be useful,
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; A dark theme using different shades of blue with option to enable italics
;; Inspired by Dracula-theme

;;; Code:

(deftheme zeno
  "A dark theme using different shades of blue")

(defgroup zeno-theme nil
  "Zeno-theme options."
  :group 'faces)

(defcustom zeno-theme-enable-italics nil
  "Enable italics for functions, comments, directories."
  :type 'boolean
  :group 'zeno-theme)

(let
    (
     (bg                     "#282A36")
     (fg                     "#E8F0FF")
     (seperator              "#1F2029")
     (cursor                 "#F8F8F0")
     (turquoise_blue         "#66D9EF")
     (light_violet           "#BB98FC")
     (lime_green             "#5FCA81")
     (atlantis_green         "#A6E22E")
     (moderate_blue          "#4577D7")
     (very_light_pink        "#FF84C9")
     (reddish_pink           "#FF5996")
     (light_green_cyan       "#60FCEC")
     (kimberly               "#665C7E")
     (maya_blue              "#84B5FF")
     (cranberry              "#D2527F")
     (lavender_blue          "#C1CAFF")
     (m2                     "#FD971F")
     (m3                     "#EF5939")
     (m7                     "#FF0000")
     (m8                     "#FFCACA")
     (diff1                  "#232526")
     (ml-inactive-face       "#7a7a7a")
     (comment-face           "#6F7181")
     (line-number-face       "#6883A8")
     (warning-bg-face        "#333333")
     (fullWhite              "#FFFFFF")
     (fullBlack              "#000000")
     (hl-line-highlight      "#343850")
     (line-highlight         "#343850")
     (mode-line-active       "#343850")
     (mode-line-inactive     "#1d2130")
     
     (slantType (if zeno-theme-enable-italics 'italic 'normal))

   )


(custom-theme-set-faces
 'zeno

 ;; default stuff
 `(default ((t (:background ,bg :foreground ,fg))))
 `(vertical-border ((t (:foreground ,seperator))))
 `(fringe ((t (:background ,bg))))
 `(cursor ((t (:background ,cursor))))
 `(bold ((t (:weight bold))))
 `(bold-italic ((t (:weight bold :slant italic))))
 `(custom-face-tag ((t (:foreground ,turquoise_blue :weight bold))))
 `(custom-state ((t (:foreground ,light_violet))))
 `(italic ((t (:slant italic))))
 `(region ((t (:background ,kimberly))))
 `(underline ((t (:underline t))))

 ;; diff
 `(diff-added ((t (:foreground ,light_violet :weight bold))))
 `(diff-context ((t (:foreground ,fg))))
 `(diff-file-header ((t (:foreground ,turquoise_blue :background nil))))
 `(diff-indicator-added ((t (:foreground ,light_violet))))
 `(diff-indicator-removed ((t (:foreground ,lime_green))))
 `(diff-header ((t (:foreground ,fg :background ,diff1))))
 `(diff-hunk-header ((t (:foreground ,atlantis_green :background ,diff1))))
 `(diff-removed ((t (:foreground ,lime_green :weight bold))))


 `(escape-glyph ((t (:foreground ,lavender_blue))))
 `(minibuffer-prompt ((t (:foreground ,turquoise_blue))))

 ;; powerline/modeline
 `(mode-line ((t (:foreground ,fg :background ,mode-line-active))))
 `(mode-line-inactive ((t (:foreground ,ml-inactive-face :background ,mode-line-inactive :box nil))))
 `(powerline-active0 ((t (:inherit mode-line :background ,bg))))
 `(powerline-active1 ((t (:inherit mode-line :background ,bg))))
 `(powerline-active2 ((t (:inherit mode-line :background ,bg))))
 `(powerline-inactive1 ((t (:inherit mode-line-inactive :background ,bg))))
 `(powerline-inactive2 ((t (:inherit mode-line-inactive :background ,bg))))

 ;; font
 `(font-lock-builtin-face ((t (:foreground ,light_violet))))
 `(font-lock-comment-face ((t (:foreground ,comment-face :slant ,slantType))))
 `(font-lock-comment-delimiter-face ((t (:foreground ,comment-face :slant ,slantType))))
 `(font-lock-constant-face ((t (:foreground ,atlantis_green))))
 `(font-lock-doc-face ((t (:foreground ,lavender_blue :slant ,slantType))))
 `(font-lock-function-name-face ((t (:foreground ,maya_blue :slant ,slantType))))
 `(font-lock-keyword-face ((t (:foreground ,turquoise_blue))))
 `(font-lock-negation-char-face ((t (:weight bold))))
 `(font-lock-preprocessor-face ((t (:foreground ,light_violet))))
 `(font-lock-regexp-grouping-backslash ((t (:weight bold))))
 `(font-lock-regexp-grouping-construct ((t (:weight bold))))
 `(font-lock-string-face ((t (:foreground ,lavender_blue))))
 `(font-lock-type-face ((t (:foreground ,turquoise_blue :,slantType slant))))
 `(font-lock-variable-name-face ((t (:foreground ,lime_green))))
 `(font-lock-warning-face ((t (:foreground ,fullWhite (quote :background) ,warning-bg-face))))

 `(hl-todo ((t (:foreground ,m8 :weight bold))))

 ;; Basic face
 `(success ((t (:foreground ,light_violet))))

 ;; js2-mode
 `(js2-function-call ((t (:inherit default :foreground ,maya_blue :slant ,slantType))))
 `(js2-function-param ((t (:inherit default :foreground ,reddish_pink))))
 `(js2-external-variable ((t (:foreground ,atlantis_green))))
 
 ;; highlighting
 `(highlight ((t (:foreground ,fullBlack :background ,lavender_blue))))
 `(hl-line ((t (:background ,hl-line-highlight))))
 `(lazy-highlight ((t (:foreground ,fullBlack :background ,lavender_blue))))

 ;; isearch
 `(isearch ((t (:foreground ,fullBlack :background ,lavender_blue))))
 `(isearch-fail ((t (:foreground ,fullWhite :background ,warning-bg-face))))
 `(ahs-plugin-whole-buffer-face ((t (:foreground ,fullBlack :background ,maya_blue))))
 `(ahs-face ((t (:foreground ,fullBlack :background ,lavender_blue))))
 `(ahs-definition-face ((t (:background ,lavender_blue :foreground ,light_green_cyan))))

 ;; org
 `(outline-2 ((t (:background ,bg :foreground ,light_violet))))
 `(outline-1 ((t (:background ,bg :foreground ,turquoise_blue))))
 `(outline-3 ((t (:background ,bg :foreground ,lime_green))))
 `(outline-4 ((t (:background ,bg :foreground ,atlantis_green))))
 `(outline-5 ((t (:background ,bg :foreground ,moderate_blue))))
 `(outline-6 ((t (:background ,bg :foreground ,very_light_pink))))
 `(outline-7 ((t (:background ,bg :foreground ,reddish_pink))))
 `(outline-8 ((t (:background ,bg :foreground ,light_green_cyan))))
 `(org-level-1 ((t (:foreground ,maya_blue  ))))
 `(org-level-2 ((t (:inherit outline-1 ))))
 `(org-level-3 ((t (:inherit outline-3  ))))
 `(org-level-4 ((t (:inherit outline-4  ))))
 `(org-level-5 ((t (:inherit outline-5  ))))
 `(org-level-6 ((t (:inherit outline-6  ))))
 `(org-level-7 ((t (:inherit outline-7  ))))
 `(org-level-8 ((t (:inherit outline-8  ))))
 `(rainbow-delimiters-depth-1-face ((t (:inherit outline-1))))
 `(rainbow-delimiters-depth-2-face ((t (:inherit outline-2))))
 `(rainbow-delimiters-depth-3-face ((t (:inherit outline-3))))
 `(rainbow-delimiters-depth-4-face ((t (:inherit outline-4))))
 `(rainbow-delimiters-depth-5-face ((t (:inherit outline-5))))
 `(rainbow-delimiters-depth-6-face ((t (:inherit outline-6))))
 `(rainbow-delimiters-depth-7-face ((t (:inherit outline-7))))
 `(rainbow-delimiters-depth-8-face ((t (:inherit outline-8))))
 `(rainbow-delimiters-depth-9-face ((t (:foreground ,turquoise_blue))))

 ;; others
 `(secondary-selection ((t (:foreground ,fg))))
 `(shadow ((t (:foreground ,comment-face))))
 `(widget-inactive ((t (:background ,m7))))
 `(widget-button-pressed ((t (:foreground ,m8))))

 ;; undo-tree
 `(undo-tree-visualizer-active-branch-face ((t (:inherit default))))
 `(undo-tree-visualizer-current-face ((t (:foreground ,m3))))
 `(undo-tree-visualizer-default-face ((t (:inherit shadow))))
 `(undo-tree-visualizer-register-face ((t (:foreground ,lavender_blue))))
 `(undo-tree-visualizer-unmodified-face ((t (:foreground ,turquoise_blue))))

 ;; helm-buffer
 `(helm-buffer-file ((t (:foreground ,turquoise_blue))))
 `(helm-ff-executable ((t (:foreground ,fullWhite))))
 `(helm-ff-file ((t (:foreground ,fullWhite))))
 `(helm-prefarg ((t (:foreground ,atlantis_green))))
 `(helm-selection ((t (:background ,moderate_blue :foreground ,fullWhite))))
 `(helm-buffer-directory ((t (:foreground ,atlantis_green))))
 `(helm-ff-directory ((t (:foreground ,atlantis_green))))
 `(helm-source-header ((t (:background ,fullBlack :foreground ,fullWhite
                                       :weight bold :height 1.3 :family "Sans Serif"))))
 `(helm-swoop-target-line-block-face ((t (:background ,moderate_blue :foreground ,fullWhite))))
 `(helm-swoop-target-word-face ((t (:foreground ,atlantis_green))))
 `(helm-swoop-target-line-face ((t (:background ,moderate_blue :foreground ,fullWhite))))
 `(helm-match ((t (:inherit default :foreground ,atlantis_green))))
 `(helm-grep-file ((t (:inherit default :foreground ,atlantis_green))))

 ;; ivy
 `(ivy-current-match ((t (:background ,moderate_blue :foreground ,fullWhite))))
 `(ivy-highlight-face ((t (:background ,fullBlack :foreground ,lime_green))))
 `(ivy-modified-buffer ((t (:inherit default :foreground ,m2))))
 `(ivy-virtual ((t (:inherit default ))))
 `(ivy-minibuffer-match-face-1 ((t (:inherit default :foreground ,atlantis_green))))
 `(ivy-minibuffer-match-face-2 ((t (:inherit default :foreground ,atlantis_green))))
 `(ivy-minibuffer-match-face-3 ((t (:inherit default :foreground ,atlantis_green))))
 `(ivy-minibuffer-match-face-4 ((t (:inherit default :foreground ,atlantis_green))))
 `(swiper-line-face ((t (:background ,moderate_blue :foreground ,fullBlack))))
 `(swiper-match-face-2 ((t (:foreground ,maya_blue))))
 `(ivy-modified-buffer ((t (:inherit default :foreground ,very_light_pink))))
 
  ;; company
 `(company-tooltip ((t (:background ,bg :foreground ,fullWhite))))
 `(company-tooltip-mouse ((t (:foreground ,maya_blue))))
 `(company-template-field ((t (:background: ,bg :foreground ,fullWhite))))
 `(company-tooltip-selection ((t (:background ,moderate_blue :foreground ,fullWhite))))
 `(company-echo-common ((t (:foreground ,atlantis_green))))
 `(company-scrollbar-bg ((t (:background ,seperator))))
 `(company-scrollbar-fg ((t (:background ,line-highlight))))
 `(company-tooltip-annotation ((t (:foreground ,lime_green))))
 `(company-tooltip-annotation-selection ((t (:inherit company-tooltip-annotation))))
 `(company-tooltip-common ((t (:foreground ,atlantis_green))))
 `(company-preview ((t (:background ,line-highlight))))
 `(company-preview-common ((t (:inherit company-preview ))))
 `(company-preview-search ((t (:inherit company-preview))))

 ;; neotree
 `(neo-dir-link-face ((t (:foreground ,maya_blue ))))
 `(neo-root-dir-face ((t (:foreground ,turquoise_blue ))))

 ;; treemacs
 `(treemacs-directory-face ((t (:foreground ,maya_blue ))))

 ;; parentheses matching
 `(show-paren-match ((t (:background ,cranberry :foreground ,fullBlack :weight bold))))
 `(show-paren-mismatch ((t (:background ,m7 :foreground ,fullWhite))))
 `(rainbow-delimiters-mismatched-face ((t (:inherit show-paren-mismatch :underline t))))
 `(rainbow-delimiters-unmatched-face ((t (:inherit show-paren-mismatch))))

 ;; dired
 `(dired-directory ((t (:foreground ,maya_blue ))))

 ;; Web-mode
 `(web-mode-html-attr-custom-face ((t (:foreground ,reddish_pink))))
 `(web-mode-html-attr-equal-face ((t (:foreground ,fullWhite))))
 `(web-mode-html-attr-name-face ((t (:foreground ,lime_green))))
 `(web-mode-html-attr-value-face ((t (:inherit font-lock-string-face ))))
 `(web-mode-html-tag-bracket-face ((t (:foreground ,fullWhite))))
 `(web-mode-html-tag-face ((t (:inherit font-lock-function-name-face))))
 `(web-mode-html-tag-custom-face ((t (:inherit web-mode-html-tag-face))))

 ;; linum relative line number face
 `(linum-relative-current-face ((t (:inherit linum :foreground ,light_violet :weight normal))))
 `(linum ((t (:background ,bg :foreground ,line-number-face :weight normal))))

 ;; native line number face
 `(line-number ((t :background ,bg :foreground ,line-number-face :weight normal)))
 `(line-number-current-line ((t :background ,bg :foreground, light_violet, :weight normal)))

 ;; imenu-list
 `(imenu-list-entry-subalist-face-0 ((t (:foreground ,light_violet))))
 `(imenu-list-entry-subalist-face-1 ((t (:foreground ,atlantis_green))))
 `(imenu-list-entry-subalist-face-2 ((t (:foreground ,very_light_pink))))
 `(imenu-list-entry-subalist-face-3 ((t (:foreground ,light_green_cyan))))
 `(imenu-list-entry-face-0 ((t (:foreground ,turquoise_blue))))
 `(imenu-list-entry-face-1 ((t (:foreground ,lime_green))))
 `(imenu-list-entry-face-2 ((t (:foreground ,moderate_blue))))
 `(imenu-list-entry-face-3 ((t (:foreground ,reddish_pink))))

 ;; avy
 `(avy-lead-face ((t (:background ,turquoise_blue :foreground ,fullBlack :weight bold))))
 `(avy-lead-face-0 ((t (:background ,light_violet :foreground ,fullBlack :weight bold))))
 `(avy-lead-face-1 ((t (:background ,lime_green :foreground ,fullBlack :weight bold))))
 `(avy-lead-face-2 ((t (:background ,atlantis_green :foreground ,fullBlack :weight bold))))


 ;; indent-guide faces
 `(indent-guide-face ((t (:foreground ,line-number-face ))))
 `(highlight-indent-guides-character-face ((t (:foreground ,line-number-face ))))

 `(link ((t (:foreground ,light_green_cyan :background ,bg :underline t))))

 ;; diredp
 `(diredp-dir-heading ((t (:foreground ,atlantis_green :underline t))))
 `(diredp-dir-name ((t (:foreground ,maya_blue ))))
 `(diredp-file-name ((t (:foreground ,fg))))
 `(diredp-file-suffix ((t (:foreground ,fg))))
 `(diredp-flag-mark ((t (:foreground ,light_violet))))
 `(diredp-flag-mark-line ((t (:foreground ,light_violet))))
 `(diredp-deletion ((t (:foreground ,reddish_pink))))
 `(diredp-deletion-file-name ((t (:foreground ,reddish_pink))))
 `(diredp-number ((t (:foreground ,turquoise_blue ))))
 `(diredp-read-priv ((t (:foreground ,very_light_pink))))
 `(diredp-exec-priv ((t (:foreground ,light_green_cyan))))
 `(diredp-dir-priv ((t (:foreground ,maya_blue))))
 `(diredp-write-priv ((t (:foreground ,lime_green))))
 `(diredp-no-priv ((t (:foreground ,fg))))
 `(diredp-compressed-file-name ((t (:foreground ,very_light_pink))))
 `(diredp-compressed-file-suffix ((t (:foreground ,very_light_pink))))
 `(diredp-ignored-file-name ((t (:foreground ,cranberry))))
 `(diredp-symlink ((t (:foreground ,lime_green))))
 `(diredp-rare-priv ((t (:foreground ,light_violet))))

 `(evil-snipe-first-match-face ((t (:inherit isearch))))
 `(evil-snipe-matches-face ((t (:inherit isearch))))

 ;; markdown
 `(markdown-header-face-1 ((t (:foreground ,maya_blue  ))))
 `(markdown-header-face-2 ((t (:inherit outline-1  ))))
 `(markdown-header-face-3 ((t (:inherit outline-2  ))))
 `(markdown-header-face-4 ((t (:inherit outline-3  ))))
 `(markdown-header-face-5 ((t (:inherit outline-4  ))))
 `(markdown-header-face-6 ((t (:inherit outline-5  ))))
 ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide 'zeno-theme)
;;; zeno-theme.el ends here
