(global-set-key (kbd "C-w") 'backward-kill-word)
(global-set-key (kbd "M-'") 'clipboard-kill-region)
(global-set-key (kbd "C-`") 'longlines-mode)
(global-set-key (kbd "C-~") 'toggle-truncate-lines)
(global-set-key (kbd "C-]") 'other-window)
(global-set-key (kbd "M-p") 'down-one)
(global-set-key (kbd "M-n") 'up-one)
(global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "C-x C-b") 'buffer-menu-other-window)
(global-set-key (kbd "C-M-t") 'text-mode)
(global-set-key (kbd "C-M-o") 'org-mode)
(global-set-key (kbd "s-t") '(lambda () (interactive) (ansi-term "/bin/bash")))
(global-set-key (kbd "s-i") 'rename-buffer)
(global-set-key (kbd "s-/") 'comment-region)
(define-key global-map (kbd "C-c r")
  (lambda () (interactive) (org-capture nil "r")))
;; increase opacity
(global-set-key (kbd "C-9") '(lambda()(interactive)(djcb-opacity-modify)))
;; decrease opacity
(global-set-key (kbd "C-8") '(lambda()(interactive)(djcb-opacity-modify t)))
;; reset opacity to 100%
(global-set-key (kbd "C-0") '(lambda()(interactive)
                               (modify-frame-parameters nil `((alpha . 100)))))
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)
(global-set-key (kbd "C-j") '(lambda ()
                               (interactive)
                               (newline)
                               (indent-relative)))
(global-set-key (kbd "C-c y") '(lambda ()
                                 (interactive)
                                 (popup-menu 'yank-menu)))

;;key-chord business
(add-to-list 'load-path (concat cjb-load-path "key-chord"))
(require 'key-chord)
(key-chord-mode 1)
(key-chord-define-global ";'" 'ido-switch-buffer)
(key-chord-define-global ":\"" 'buffer-menu-other-window)
(key-chord-define-global "<>" 'point-to-register)
(key-chord-define-global ",." 'jump-to-register)

(defun up-one ()
  "idea taken from Tom Laudeman"
  (interactive)
  (scroll-up 1))

(defun down-one ()
  "idea taken from Tom Laudeman"
  (interactive)
  (scroll-down 1))


(provide 'keys-config)
