(setq org-hide-leading-stars t)
(setq org-startup-indented t)

(defun cjb-back-to-indentation-org-version ()
  "Like M-m but skips the line item decorators in org mode"
  (interactive "^")
  (beginning-of-line 1)
  (skip-chars-forward "*-")
  (forward-char))

(add-hook 'org-mode-hook '(lambda () (cjb-org-mode-keys)))

(provide 'org-config)
