(setq org-hide-leading-stars t)
(setq org-directory "~/Dropbox/org")
(setq org-default-notes-file (concat org-directory "/capture.org"))
(setq org-startup-indented t)

(setq org-capture-templates
      '(("r" "remember" entry (file "")
         "")
        ))

(add-hook 'org-capture-after-finalize-hook
          '(lambda ()
             (kill-buffer "capture.org")))

(add-hook 'org-mode-hook
          '(lambda ()
             (set-cjb-org-keys)))

(defun set-cjb-org-keys ()
  (local-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
  (local-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
  (local-set-key (kbd "S-C-<down>") 'shrink-window)
  (local-set-key (kbd "S-C-<up>") 'enlarge-window))


(provide 'org-config)
