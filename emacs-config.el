(defvar cjb-load-path "~/emacs/lib/")

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

(provide 'emacs-config)
