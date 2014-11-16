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
(evil-mode 0)
(global-set-key (kbd "M-z") 'evil-mode)




;;
;; term stuff
;;
(defun switch-to-term ()
  (interactive)
  (term "/bin/bash"))
(global-set-key (kbd "C-z") 'switch-to-term)




;;
;; rando keybindings
;;
(global-set-key (kbd "C-w") 'backward-kill-word)



;;
;; EmacsWiki copypasta so I can C-c to ESC in Evil mode
;;
;; (defun my-esc (prompt)
;;   "Functionality for escaping generally.  Includes exiting Evil insert state and C-g binding. "
;;   (cond
;;    ;; If we're in one of the Evil states that defines [escape] key, return [escape] so as
;;    ;; Key Lookup will use it.
;;    ((or (evil-insert-state-p) (evil-normal-state-p) (evil-replace-state-p) (evil-visual-state-p)) [escape])
;;    ;; This is the best way I could infer for now to have C-c work during evil-read-key.
;;    ;; Note: As long as I return [escape] in normal-state, I don't need this.
;;    ;;((eq overriding-terminal-local-map evil-read-key-map) (keyboard-quit) (kbd ""))
;;    (t (kbd "C-g"))))
;; (define-key key-translation-map (kbd "C-c") 'my-esc)
;; ;; Works around the fact that Evil uses read-event directly when in operator state, which
;; ;; doesn't use the key-translation-map.
;; (define-key evil-operator-state-map (kbd "C-c") 'keyboard-quit)
;; ;; Not sure what behavior this changes, but might as well set it, seeing the Elisp manual's
;; ;; documentation of it.
;; (set-quit-char "C-c")




(provide 'emacs-config)
