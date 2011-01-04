;; Put requires for all the custom config files here.
;; Also any minor configurations you want.

(require 'load-path-config)
(require 'keys-config)
(require 'org-config)
(require 'visuals-config)
(require 'js2-mode-config)
;(require 'auto-complete-config)
;(require 'python-config)
;(require 'nav-config)
(require 'nxml-config)
(require 'yasnippet-config)
;(require 'cygwin-config)
(require 'magit-config)
(require 'dired-config)
(require 'lilypond-config)
(require 'eshell-config)
(require 'alarm)

;minor behavior changes:
(set-variable 'scroll-conservatively 5)
(blink-cursor-mode -1)
(set-variable 'initial-major-mode 'text-mode)
(setq inhibit-splash-screen t)
(set-variable 'initial-scratch-message nil)
(server-start)
(setq make-backup-files nil)
(put 'narrow-to-region 'disabled nil)
(add-hook 'speedbar-mode-hook 'speedbar-toggle-show-all-files)
(ido-mode t)
(add-hook 'before-save-hook 'time-stamp)
(set-variable 'help-window-select t)
(set-variable 'delete-by-moving-to-trash t)
(show-paren-mode 1)
;I added this, but it doesn't seem to be working...
(set-variable 'dired-auto-revert-buffer t)


;; blatantly stolen from Steve Yegge. What a smart guy.
(defun swap-windows ()
  "If you have 2 windows, it swaps them."
  (interactive)
  (cond ((/= (count-windows) 2)
         (message "You need exactly 2 windows to do this."))
        (t
         (let* ((w1 (first (window-list)))
                (w2 (second (window-list)))
                (b1 (window-buffer w1))
                (b2 (window-buffer w2))
                (s1 (window-start w1))
                (s2 (window-start w2)))
           (set-window-buffer w1 b2)
           (set-window-buffer w2 b1)
           (set-window-start w1 s2)
           (set-window-start w2 s1))))
  (other-window 1))


(provide 'emacs-config)

