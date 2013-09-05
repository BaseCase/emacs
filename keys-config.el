;; movement
(global-set-key (kbd "M-[")         'backward-paragraph)
(global-set-key (kbd "M-]")         'forward-paragraph)
(global-set-key (kbd "M-p")         'down-one)
(global-set-key (kbd "M-n")         'up-one)
(global-set-key (kbd "C-s")         'isearch-forward-regexp)

;; buffer/window/file navigation
(global-set-key (kbd "C-x C-b")     'buffer-menu-other-window)
(global-set-key (kbd "C-'")         'ido-switch-buffer)
(global-set-key (kbd "C-]")         'other-window)
(global-set-key (kbd "C-x C-f")     'find-file-in-repository)
(global-set-key (kbd "M-i")         'rename-buffer)

;; deletion
(global-set-key (kbd "M-Z")         'backwards-zap-to-char)
(global-set-key (kbd "C-w")         'backward-kill-word)
(global-set-key (kbd "M-'")         'clipboard-kill-region)

;; random utilities
(global-set-key (kbd "C-\\")        'cjb-command-runner)
(global-set-key (kbd "M-/")         'hippie-expand)
(global-set-key (kbd "M-h")         'ns-do-hide-emacs)
(global-set-key (kbd "C-`")         'toggle-truncate-lines)
(global-set-key (kbd "M-*")         'rgrep)

;; window resizing
(global-set-key (kbd "S-C-<up>")    'enlarge-window)
(global-set-key (kbd "S-C-<down>")  'shrink-window)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<left>")  'shrink-window-horizontally)

;; Make Mac's modifier keys sensible
(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

(defun backwards-zap-to-char (char)
  (interactive "cZap backwards to char: ")
  (zap-to-char -1 char))

(defun up-one () (interactive) (scroll-up 1))
(defun down-one () (interactive) (scroll-down 1))

;; in *Buffer List* buffers, 's' will sort by filename
(defun buffer-menu-sort-by-filename ()
  (interactive)
  (Buffer-menu-sort 5))
(add-hook 'Buffer-menu-mode-hook
          (lambda () (local-set-key (kbd "s") 'buffer-menu-sort-by-filename)))

(provide 'keys-config)
