(add-to-list 'load-path (concat cjb-load-path "find-file-in-repository"))
(require 'find-file-in-repository)

(ido-mode t)
(setq ido-enable-flex-matching t)

;; Some copypasta from emacswiki to get ido-mode showing results vertically, and C-p/n navigate results choices
(setq ido-decorations (quote ("\n-> " "" "\n   " "\n   ..." "[" "]" " [No match]" " [Matched]" " [Not readable]" " [Too big]" " [Confirm]")))
(defun ido-disable-line-truncation () (set (make-local-variable 'truncate-lines) nil))
(add-hook 'ido-minibuffer-setup-hook 'ido-disable-line-truncation)
(defun ido-define-keys ()
  (define-key ido-completion-map (kbd "C-n") 'ido-next-match)
  (define-key ido-completion-map (kbd "C-p") 'ido-prev-match))
(add-hook 'ido-setup-hook 'ido-define-keys)

(provide 'navigation-config)
