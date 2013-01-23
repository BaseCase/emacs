(defvar cjb-load-path "~/emacs/lib/")

(setq make-backup-files nil)
(put 'narrow-to-region 'disabled nil)
(ido-mode t)
(set-variable 'help-window-select t)
(fset 'yes-or-no-p 'y-or-n-p)
(setq ispell-program-name "/usr/local/bin/aspell")
(server-start)

;;Dired buffer names always end in a '/'
(add-hook 'dired-mode-hook 'ensure-buffer-name-ends-in-slash)
(defun ensure-buffer-name-ends-in-slash ()
  "change buffer name to end with slash"
  (let ((name (buffer-name)))
    (if (not (string-match "/$" name))
        (rename-buffer (concat name "/") t))))

(add-hook 'grep-mode-hook 'toggle-truncate-lines)
(defalias 'grep-find-dired 'find-grep-dired)

;;unicode fixing
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(defun path ()
  "show current buffer's full filename and copy it to clipboard"
  (interactive)
  (shell-command (concat "echo " buffer-file-name " | pbcopy"))
  (message buffer-file-name))

;;Emacs PATH == Bash PATH
(setenv "PATH" "/usr/local/share/python:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/usr/texbin:/usr/X11/bin:/opt/local/bin:/opt/local/sbin:/usr/games:/Users/cjb/bin/scripts")

(setenv "NODE_PATH" "/usr/local/lib/node_modules")

(require 'org-config)
(require 'visuals-config)
(require 'keys-config)
(require 'yasnippet-config)
(require 'whitespace-config)
(require 'javascript-config)
(require 'coffee-config)
(require 'markdown-config)
(require 'command-runner)
(require 'scss-config)
(require 'evil-config)

(provide 'emacs-config)
