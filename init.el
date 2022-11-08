;;;; Emacs Configuration file

;; Author: Paolo Anzani <p.anzani@campus.unimib.it>

;; Code:

;;; Apppearance settings =======================================================

;; Custom theme
(load-theme 'panz t)

;; Disable Tool bar
(tool-bar-mode -1)

;; Disable Scroll bar
(scroll-bar-mode -1)

;; Deafult frame setting
(setq default-frame-alist
      (if (display-graphic-p)
	  '((tool-bar-lines . 0)
	    (vertical-scroll-bars . nil)
	    (width . 80)
	    (height . 46))
	'((tool-bar-lines . 0)
	  (vertical-scroll-bars . nil))))

;;; Custom keybinds ============================================================

;; Enable/Disable line numbers
(defun switch-on-line-numbers ()
  (interactive)
  (set-frame-width (selected-frame) 84)
  (display-line-numbers-mode))
(global-set-key (kbd "<f5>") 'switch-on-line-numbers)

(defun switch-off-line-numbers ()
  (interactive)
  (set-frame-width (selected-frame) 80)
  (display-line-numbers-mode -1))
(global-set-key (kbd "<f6>") 'switch-off-line-numbers)

;;; Other settings =============================================================

;; MELPA Package Repo
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Disable backup files and autosaves
(setq make-backup-files nil)
(setq auto-save-default nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(slime organic-green-theme gruber-darker-theme alect-themes)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Set sbcl path
(setq inferior-lisp-program (shell-command-to-string "which sbcl"))


