(setq org-hide-leading-stars t)
(setq org-startup-indented t)

(setq org-todo-keywords
      '((sequence "TODO" "WORKING" "DONE")))

(setq org-todo-keyword-faces
           '(("TODO" . "pink")
             ("WORKING" . "yellow")
             ("DONE" . "PaleGreen")))

(add-hook 'org-mode-hook '(lambda () (cjb-org-mode-keys)))
(add-hook 'org-mode-hook (lambda () (linum-mode 0)))

(defun cjb-org-mode-keys ()
  "set keys I like in org buffers"
  (local-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
  (local-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
  (local-set-key (kbd "S-C-<down>") 'shrink-window)
  (local-set-key (kbd "S-C-<up>") 'enlarge-window)
  (local-set-key (kbd "C-'") 'ido-switch-buffer)
  (local-set-key (kbd "M-m") 'cjb-back-to-indentation-org-version)
  (local-set-key (kbd "M-h")  'ns-do-hide-emacs)
  (local-set-key (kbd "C-c C-.")  'org-time-stamp))

(defun cjb-back-to-indentation-org-version ()
  "Like M-m but skips the line item decorators in org mode"
  (interactive "^")
  (beginning-of-line 1)
  (skip-chars-forward "*-")
  (forward-char))

(provide 'org-config)
