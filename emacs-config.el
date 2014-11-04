(defvar lib-load-path "~/emacs/lib/")

;; on OS X, set modifier keys nicely
(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

(prefer-coding-system 'utf-8)

(setq default-frame-alist
      '(
	(width . 100)
	(height . 50)
	(font . "Source Code Pro-16")))

(setq make-backup-files nil)

;; EEEEEEVIL!!
(add-to-list 'load-path (concat lib-load-path "evil"))
(require 'evil)
(evil-mode 1)

(provide 'emacs-config)
