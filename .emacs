;;;;;;;;;;;;;;;;;;;;;;;;
;;Package repository
;;;;;;;;;;;;;;;;;;;;;;;;
(require 'package)

(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl
    (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)



;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;PACKAGES Loading;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;
 
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

; then define packages you use
(use-package nofrils-acme-theme)
(use-package fireplace)
(use-package counsel-tramp)
(use-package use-package)
(use-package counsel)
(use-package ivy)
(use-package avy)
(use-package multiple-cursors)
(use-package typit)
(use-package visible-mark)
(use-package cyberpunk-theme)
(use-package expand-region)
(use-package ess)
;;(use-package modalka)
(use-package markdown-mode)
(use-package magit)
(use-package magithub)
(use-package rainbow-mode)
(load-file "~/key-chord.el")

;;;;;;;;;;;;;;
;Expand Region
;;;;;;;;;;;;;;
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)
(put 'narrow-to-region 'disabled nil)

;;;;;;;;;;;;;;;;
;;Multi-Cursor
;;;;;;;;;;;;;;;;;
(global-set-key (kbd "C-c m c") 'mc/edit-lines)

;;;;;;;;;;;;;;;
;;Initial View
;;;;;;;;;;;;;;;
(setq inhibit-startup-screen t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)
(global-visual-line-mode 1)
(column-number-mode 1)
(line-number-mode 1)

;;;;;;;;;;
;ivy/avy;;
;;;;;;;;;;
(ivy-mode)
(global-set-key (kbd "M-s") 'avy-goto-char-timer)
(global-set-key (kbd "C-s") 'isearch-forward)
(setq sentence-end-double-space nil)

;;;;;;;;;;;;;;;;
;;SERVER START;;
;;;;;;;;;;;;;;;;
(server-start)

;;;;;;;;;;;;;;;
;;THEME
;;'''''''''''''
(load-file "~/personal-theme.el")
;;(load-file "~/word-perfect-theme.el")
(load-theme 'personal t)

;;;;;;;;;;;;;;;;;;;;
;;POWERLINE COLORS;;
;;;;;;;;;;;;;;;;;;;;
(set-face-attribute 'mode-line nil
                    :foreground "Black"
                    :background "#BF98A0"
                    :box nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;modalka rebind for modal editing
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;(require 'modalka)
;;(global-set-key (kbd "C-SPC") #'modalka-mode)
;;(define-key modalka-mode-map (kbd "F") #'kill-word)
;;(define-key modalka-mode-map (kbd "D") #'backward-kill-word)
;;(define-key modalka-mode-map (kbd "d") #'delete-backward-char)
;;(define-key modalka-mode-map (kbd "f") #'delete-char)
;;(define-key modalka-mode-map (kbd "i") #'previous-line)
;;(define-key modalka-mode-map (kbd "k") #'next-line)
;;(define-key modalka-mode-map (kbd "I") #'backward-paragraph)
;;(define-key modalka-mode-map (kbd "K") #'forward-paragraph)
;;(define-key modalka-mode-map (kbd "j") #'backward-char)
;;(define-key modalka-mode-map (kbd "l") #'forward-char)
;;(define-key modalka-mode-map (kbd "J") #'backward-word)
;;(define-key modalka-mode-map (kbd "L") #'forward-word)
;;(define-key modalka-mode-map (kbd "o") #'forward-sentence)
;;(define-key modalka-mode-map (kbd "u") #'backward-sentence)
;;(define-key modalka-mode-map (kbd "g") #'set-mark-command)
;;(define-key modalka-mode-map (kbd "t") #'pop-to-mark-command)
;;(define-key modalka-mode-map (kbd "s") #'avy-goto-char-2)
;;(define-key modalka-mode-map (kbd "v") #'yank)
;;(define-key modalka-mode-map (kbd "x") #'kill-region)
;;(define-key modalka-mode-map (kbd "z") #'undo)
;;(define-key modalka-mode-map (kbd "r") #'redo)
;;(define-key modalka-mode-map (kbd "c") #'kill-ring-save)
;;(define-key modalka-mode-map (kbd "+") #'text-scale-increase)
;;(define-key modalka-mode-map (kbd "-") #'text-scale-decrease)
;;(define-key modalka-mode-map (kbd "h") #'end-of-line)
;;(define-key modalka-mode-map (kbd "H") #'beginning-of-line)
;;(define-key modalka-mode-map (kbd "W") #'capitalize-word)
;;(define-key modalka-mode-map (kbd "w") #'downcase-word)
;;(define-key modalka-mode-map (kbd "r") #'cool-moves/sentence-forward)
;;(define-key modalka-mode-map (kbd "R") #'cool-moves/sentence-backward)
;;(define-key modalka-mode-map (kbd "'") #'er/expand-region)
;;(define-key modalka-mode-map (kbd "e") #'mc/mark-next-like-this)
;;(modalka-define-kbd "1" "C-1")
;;(modalka-define-kbd "2" "C-2")
;;(modalka-define-kbd "3" "C-3")
;;(modalka-define-kbd "4" "C-4")
;;(modalka-define-kbd "5" "C-5")
;;(modalka-define-kbd "6" "C-6")
;;(modalka-define-kbd "7" "C-7")
;;(modalka-define-kbd "8" "C-8")
;;(modalka-define-kbd "9" "C-9")


;;;;;;;;;;;;;;;
;;Visible Mark Mode
;;;;;;;;;;;;;;;
(defface visible-mark-active ;; put this before (require 'visible-mark)
'((((type tty) (class mono)))
(t (:background "magenta"))) "")
(setq visible-mark-max 2) 
(setq visible-mark-faces `(visible-mark-face1 visible-mark-face2 visible-mark-face3))
(require 'visible-mark)
(global-visible-mark-mode 1) 
(setq-default cursor-type '(bar . 2))
(setq modalka-cursor-type 'box)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Make typing over region behave as expected
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(delete-selection-mode 1)
(cua-mode 1)

;; add mutltiple cursors
(require 'multiple-cursors)

;; add key chords
(require 'key-chord)
(key-chord-mode 1)
(setq key-chord-two-keys-delay 0.025)  

;; Define Chords
(key-chord-define-global "eg" 'set-mark-command) ; set the mark
(key-chord-define-global "ef" 'avy-goto-char-timer) ; interactive jump
(key-chord-define-global "ep" 'pop-global-mark) ; jump back to last mark
(key-chord-define-global "eb" 'switch-to-next-buffer) ; evaluate selected text
(key-chord-define-global "eh" 'mc/mark-all-like-this) ; evaluate selected text
(key-chord-define-global "en" 'mc/mark-next-like-this) ; evaluate selected text
(key-chord-define-global "er" 'er/expand-region) ; evaluate selected text
(key-chord-define-global "eo" 'occur) ; evaluate selected text

(set-frame-font "Consolas" nil t)

(custom-set-faces
 '(org-table ((t (:inherit fixed-pitch :foreground "LightSkyBlue" :family "Consolas"))))
 '(markdown-pre-face ((t (:inherit fixed-pitch :foreground "LightSkyBlue" :family "Consolas"))))
)

