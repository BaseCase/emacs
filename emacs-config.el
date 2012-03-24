(defvar cjb-load-path "~/emacs/lib/")

(server-start)
(setq make-backup-files nil)
(put 'narrow-to-region 'disabled nil)
(ido-mode t)
(set-variable 'help-window-select t)
(set-variable 'delete-by-moving-to-trash t)
(fset 'yes-or-no-p 'y-or-n-p)
(put 'dired-find-alternate-file 'disabled nil)
(setq ispell-program-name "/usr/local/bin/aspell")

;;word count
(add-to-list 'load-path (concat cjb-load-path "wc"))
(require 'wc)

;;Dired buffer names always end in a '/'
(add-hook 'dired-mode-hook 'ensure-buffer-name-ends-in-slash)
(defun ensure-buffer-name-ends-in-slash ()
  "change buffer name to end with slash"
  (let ((name (buffer-name)))
    (if (not (string-match "/$" name))
        (rename-buffer (concat name "/") t))))

;;unicode fixing
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;;Emacs PATH == Bash PATH
(setenv "PATH" "/usr/local/share/python:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/usr/texbin:/usr/X11/bin:/opt/local/bin:/opt/local/sbin:/usr/games:/Users/cjb/bin/scripts")

(require 'org-config)
(require 'visuals-config)
(require 'keys-config)
(require 'yasnippet-config)
(require 'whitespace-config)
(require 'javascript-config)
(require 'coffee-config)
(require 'markdown-config)
(require 'spec-runner)

(provide 'emacs-config)
