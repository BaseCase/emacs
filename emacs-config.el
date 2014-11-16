 (defvar lib-load-path "~/emacs/lib/")

;;
;; Command is Meta on OSX
;;
(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)




;;
;; misc settings
;;
(prefer-coding-system 'utf-8)
(setq make-backup-files nil)
(setq help-window-select t)
(setq scroll-conservatively 5)
(global-set-key (kbd "C-x C-b") 'buffer-menu)
(add-hook 'before-save-hook 'delete-trailing-whitespace)



;;
;; visual stuff
;;
(setq default-frame-alist
      '(
	(width . 100)
	(height . 50)
	(font . "Source Code Pro-16")))

(add-to-list 'custom-theme-load-path lib-load-path)
(load-theme 'wilson t)
(tool-bar-mode -1)
(setq inhibit-splash-screen t)




;;
;; EEEEEEVIL!!
;;
(add-to-list 'load-path (concat lib-load-path "evil"))
(require 'evil)
(define-key evil-normal-state-map "\C-z" 'switch-to-term)
(define-key evil-normal-state-map "\C-u" 'evil-scroll-up)
(global-set-key (kbd "M-z") 'evil-mode)
(defun my-esc (prompt)
  "Turn C-c into basically what it is in Vim."
  (cond
   ((or (evil-insert-state-p) (evil-normal-state-p) (evil-replace-state-p) (evil-visual-state-p)) [escape])
   (t (kbd "C-g"))))
(define-key key-translation-map (kbd "C-c") 'my-esc)
(define-key evil-operator-state-map (kbd "C-g") 'keyboard-quit)
(evil-mode 0)




;;
;; term stuff
;;
(defun switch-to-term ()
  (interactive)
  (term "/bin/bash"))
(global-set-key (kbd "C-z") 'switch-to-term)
(add-hook 'term-mode-hook
	  '(lambda ()
	     (term-set-escape-char ?\C-x)))




;;
;; rando keybindings
;;
(global-set-key (kbd "C-w") 'backward-kill-word)







(provide 'emacs-config)
