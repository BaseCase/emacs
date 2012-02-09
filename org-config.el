(setq org-hide-leading-stars t)
(setq org-directory "~/Dropbox/org")
(setq org-default-notes-file (concat org-directory "/capture.org"))
(setq org-startup-indented t)

(setq org-capture-templates
      '(("r" "remember" entry (file "")
	 "")
	))

(provide 'org-config)
