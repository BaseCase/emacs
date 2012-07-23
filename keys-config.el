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
(global-set-key (kbd "M-T") '(lambda () (interactive) (term "/bin/bash")))
(global-set-key (kbd "M-?") 'comment-region)
(define-key global-map (kbd "C-c r")
  (lambda () (interactive) (org-capture nil "r")))
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)
(global-set-key (kbd "M-h") 'ns-do-hide-emacs)

;;restore useful keys in term-mode
(add-hook 'term-mode-hook '(lambda ()
                             (local-set-key (kbd "C-]") 'other-window)
                             (local-set-key (kbd "M-x") 'execute-extended-command)))

;;make CMD Meta and a couple other Mac-isms
(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

(defun backwards-zap-to-char (char)
  (interactive "cZap backwards to char: ")
  (zap-to-char -1 char))

(global-set-key (kbd "M-Z") 'backwards-zap-to-char)

;;key-chord business
(add-to-list 'load-path (concat cjb-load-path "key-chord"))
(require 'key-chord)
(key-chord-mode 1)
(key-chord-define-global ";'" 'ido-switch-buffer)
(key-chord-define-global ":\"" 'buffer-menu-other-window)
(key-chord-define-global "<>" 'point-to-register)
(key-chord-define-global ",." 'jump-to-register)
(key-chord-define-global "-=" 'cjb-command-runner)
(key-chord-define-global "_+" 'cjb-set-current-command)

(defun up-one ()
  "idea taken from Tom Laudeman"
  (interactive)
  (scroll-up 1))

(defun down-one ()
  "idea taken from Tom Laudeman"
  (interactive)
  (scroll-down 1))

(defun cjb-reset-keys ()
  "re-set my keys that get shadowed by stuff I don't like in some modes"
  (local-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
  (local-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
  (local-set-key (kbd "S-C-<down>") 'shrink-window)
  (local-set-key (kbd "S-C-<up>") 'enlarge-window)
  (local-set-key (kbd "C-j") 'org-insert-todo-heading))

(add-hook 'org-mode-hook '(lambda () (cjb-reset-keys)))

(provide 'keys-config)
