;;; word-perfect-theme.el --- word-perfect theme

;; Copyright (C) 2001 by Thomas Gehrlein
;; Copyright (C) 2013 by Syohei YOSHIDA

;; Author: Syohei YOSHIDA <syohex@gmail.com>
;; URL: https://github.com/emacs-jp/replace-colorthemes
;; Version: 0.01

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; Port of word-perfect theme from `color-themes'

;;; Code:

(define-abbrev-table
  'global-abbrev-table
  '(
    ("bgcol" "#312F2F")
    ("header1bgcol" "#BF98A0")
    ("header2bgcol" "#BF98A0")
    ("header1fgcol" "#312F2f")
    ("header2fgcol" "#312F2f")
    ("textcol" "#ffffff")
    ("linkcol" "#84DCCF")
    ("visitedlinkcol" "#84DCCF")
    ("subheadercol" "#BF98A0")
    ("shadowcol" "#312F2f")
    ("pretextcol" "#84DCCF")
    ("prebgcol" "#312F2f")
    ("operator" "#BF98A0")
    ("string" "#84DCCF")
    ("identifier" "#a6D9F7")
    ("number" "#a6D9F7")
    ("keyword" "#a6D9F7")
    ("literal" "#a6D9F7")
    ("comment" "#BF98A0")
))


(deftheme personal
  "personal theme")

(custom-theme-set-faces
 'personal

 '(default ((t (:background "#312F2F" :foreground "#ffffff"))))
 '(mouse ((t (:foreground "#84DCCF"))))
 '(cursor ((t (:background "lightsalmon"))))
 '(border ((t (:foreground "#312F2f"))))

 '(ecb-source-in-directories-buffer-face ((t (:foreground "#A6D9F7"))))
 '(gnus-mouse-face ((t (:background "#84DCCF" :foreground "#312F2f"))))
 '(goto-address-mail-face ((t (:italic t :foreground "#84DCCF"))))
 '(goto-address-mail-mouse-face ((t (:background "#84DCCF" :foreground "#312F2f"))))
 '(goto-address-url-face ((t (:bold t :foreground "#FFFFFF"))))
 '(goto-address-url-mouse-face ((t (:background "#84DCCF" :foreground "#312F2f"))))
 '(list-matching-lines-face ((t (:bold t :foreground "#FFFFFF"))))
 '(view-highlight-face ((t (:background "#84DCCF" :foreground "#312F2f"))))

 '(bbdb-field-name ((t (:foreground "#84DCCF"))))
 '(bbdb-field-value ((t (:foreground "#FFFFFF"))))
 '(bbdb-name ((t (:underline t :foreground "#84DCCF"))))
 '(bold ((t (:bold t :foreground "#FFFFFF"))))
 '(bold-italic ((t (:italic t :bold t :foreground "#BF98A0"))))
 '(calendar-today-face ((t (:underline t :foreground "#A6D9F0"))))
 '(diary-face ((t (:foreground "#BF98A0"))))
 '(ecb-sources-face ((t (:foreground ""))))
 '(edb-inter-field-face ((t (:foreground "#A6D9F0"))))
 '(edb-normal-summary-face ((t (:foreground "#BF98A0"))))
 '(emacs-wiki-bad-link-face ((t (:underline "#BF98A0" :bold t :foreground "#BF98A0"))))
 '(emacs-wiki-link-face ((t (:underline "#A6D9F0" :bold t :foreground "#A6D9F0"))))
 '(font-lock-builtin-face ((t (:foreground "#A6D9F0"))))
 '(font-lock-comment-face ((t (:foreground "#A6D9F0"))))
 '(font-lock-constant-face ((t (:foreground "#84DCCF"))))
 '(font-lock-doc-face ((t (:foreground "#BF98A0"))))
 '(font-lock-doc-string-face ((t (:foreground "#BF98A0"))))
 '(font-lock-function-name-face ((t (:background "#A6D9F0" :foreground "#313F2F"))))
 '(font-lock-keyword-face ((t (:foreground "#84DCCF"))))
 '(font-lock-preprocessor-face ((t (:foreground "#84DCCF"))))
 '(font-lock-reference-face ((t (:foreground "#A6D9F0"))))
 '(font-lock-string-face ((t (:foreground "#BF98A0"))))
 '(font-lock-type-face ((t (:foreground "#84DCCF"))))
 '(font-lock-variable-name-face ((t (:foreground "#BF98A0"))))
 '(font-lock-warning-face ((t (:bold t :foreground "#BF98A0"))))
 '(gnus-emphasis-bold ((t (:foreground "#84DCCF"))))
 '(gnus-emphasis-bold-italic ((t (:foreground "#84DCCF"))))
 '(gnus-emphasis-italic ((t (:foreground "#84DCCF"))))
 '(gnus-emphasis-underline ((t (:foreground "#84DCCF"))))
 '(gnus-emphasis-underline-bold ((t (:foreground "#84DCCF"))))
 '(gnus-emphasis-underline-bold-italic ((t (:foreground "#84DCCF"))))
 '(gnus-emphasis-underline-italic ((t (:foreground "#84DCCF"))))
 '(gnus-group-mail-1-empty-face ((t (:foreground "#A6D9F0"))))
 '(gnus-group-mail-1-face ((t (:bold t :foreground "#A6D9F0"))))
 '(gnus-group-mail-2-empty-face ((t (:foreground "#A6D9F0"))))
 '(gnus-group-mail-2-face ((t (:bold t :foreground "#A6D9F0"))))
 '(gnus-group-mail-3-empty-face ((t (:foreground "#A6D9F0"))))
 '(gnus-group-mail-3-face ((t (:bold t :foreground "#A6D9F0"))))
 '(gnus-group-mail-low-empty-face ((t (:foreground "#A6D9F0"))))
 '(gnus-group-mail-low-face ((t (:bold t :foreground "#A6D9F0"))))
 '(gnus-group-news-1-empty-face ((t (:foreground "#A6D9F0"))))
 '(gnus-group-news-1-face ((t (:bold t :foreground "#A6D9F0"))))
 '(gnus-group-news-2-empty-face ((t (:foreground "#A6D9F0"))))
 '(gnus-group-news-2-face ((t (:bold t :foreground "#A6D9F0"))))
 '(gnus-group-news-3-empty-face ((t (:foreground "#A6D9F0"))))
 '(gnus-group-news-3-face ((t (:bold t :foreground "#A6D9F0"))))
 '(gnus-group-news-low-empty-face ((t (:foreground "#A6D9F0"))))
 '(gnus-group-news-low-face ((t (:bold t :foreground "#A6D9F0"))))
 '(gnus-header-content-face ((t (:foreground "#BF98A0"))))
 '(gnus-header-from-face ((t (:foreground "#BF98A0"))))
 '(gnus-header-name-face ((t (:foreground "#A6D9F0"))))
 '(gnus-header-newsgroups-face ((t (:foreground "#BF98A0"))))
 '(gnus-header-subject-face ((t (:foreground "#BF98A0"))))
 '(gnus-signature-face ((t (:foreground "#BF98A0"))))
 '(gnus-splash-face ((t (:foreground "#BF98A0"))))
 '(gnus-summary-cancelled-face ((t (:background "#312F2f" :foreground "#A6D9F0"))))
 '(gnus-summary-high-ancient-face ((t (:bold t :foreground "#A6D9F0"))))
 '(gnus-summary-high-read-face ((t (:bold t :foreground "#A6D9F0"))))
 '(gnus-summary-high-ticked-face ((t (:bold t :foreground "#A6D9F0"))))
 '(gnus-summary-high-unread-face ((t (:bold t :foreground "#84DCCF"))))
 '(gnus-summary-low-ancient-face ((t (:italic t :foreground "#A6D9F0"))))
 '(gnus-summary-low-read-face ((t (:italic t :foreground "#A6D9F0"))))
 '(gnus-summary-low-ticked-face ((t (:italic t :foreground "#A6D9F0"))))
 '(gnus-summary-low-unread-face ((t (:italic t :foreground "#84DCCF"))))
 '(gnus-summary-normal-ancient-face ((t (:foreground "#A6D9F0"))))
 '(gnus-summary-normal-read-face ((t (:foreground "#A6D9F0"))))
 '(gnus-summary-normal-ticked-face ((t (:foreground "#A6D9F0"))))
 '(gnus-summary-normal-unread-face ((t (:foreground "#84DCCF"))))
 '(gnus-summary-selected-face ((t (:underline t :foreground "#BF98A0"))))
 '(highlight ((t (:background "#84DCCF" :foreground "#312F2f"))))
 '(holiday-face ((t (:background "#A6D9F0" :foreground "#BF98A0"))))
 '(info-menu-5 ((t (:underline t :foreground "#BF98A0"))))
 '(info-node ((t (:italic t :bold t :foreground "#BF98A0"))))
 '(info-xref ((t (:bold t :foreground "#BF98A0"))))
 '(isearch ((t (:background "#BF98A0" :foreground "#FFFFFF"))))
 '(italic ((t (:italic t :foreground "#84DCCF"))))
 '(message-cited-text-face ((t (:foreground "#BF98A0"))))
 '(message-header-cc-face ((t (:bold t :foreground "#84DCCF"))))
 '(message-header-name-face ((t (:foreground "#A6D9F0"))))
 '(message-header-newsgroups-face ((t (:italic t :bold t :foreground "#BF98A0"))))
 '(message-header-other-face ((t (:foreground "#BF98A0"))))
 '(message-header-subject-face ((t (:foreground "#BF98A0"))))
 '(message-header-to-face ((t (:bold t :foreground "#BF98A0"))))
 '(message-header-xheader-face ((t (:foreground "#BF98A0"))))
 '(message-separator-face ((t (:foreground "#84DCCF"))))
 '(mode-line ((t (:foreground "#FFFFFF" :background "#312F2f"))))
 '(mode-line-buffer-id ((t (:foreground "#FFFFFF" :background "#312F2f"))))
 '(mode-line-mousable ((t (:foreground "#FFFFFF" :background "#312F2f"))))
 '(mode-line-mousable-minor-mode ((t (:foreground "#FFFFFF" :background "#312F2f"))))
 '(overlay-empty-face ((t (nil))))
 '(primary-selection ((t (:background "#BF98A0" :foreground "#FFFFFF"))))
 '(region ((t (:background "#BF98A0" :foreground "#FFFFFF"))))
 '(secondary-selection ((t (:background "#84DCCF" :foreground "#312F2f"))))
 '(semantic-dirty-token-face ((t (:background "#FFFFFF"))))
 '(show-paren-match-face ((t (:background "#A6D9F0" :foreground "#312F2f"))))
 '(show-paren-mismatch-face ((t (:background "#BF98A0" :foreground "#FFFFFF"))))
 '(underline ((t (:underline t :background "#A6D9F0" :foreground "#FFFFFF"))))
 '(markdown-link-face ((t (:background "#312F2F" :foreground "#A6D9F0"))))
 )


;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'personal)

;;; word-perfect-theme.el ends here
