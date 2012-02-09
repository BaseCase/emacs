(setq org-hide-leading-stars t)
;;set up Remember
(org-remember-insinuate)
(setq org-directory "~/Dropbox/org")
(setq org-default-notes-file (concat org-directory "/remember.org"))

(provide 'org-config)
