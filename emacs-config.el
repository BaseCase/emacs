(defvar cjb-load-path "~/emacs/lib/")

;; random config not attached to a specific mode
(setq make-backup-files nil
      ido-enable-flex-matching t
      help-window-select t
      ispell-program-name "/usr/local/bin/aspell")
(ido-mode t)
(add-hook 'grep-mode-hook 'toggle-truncate-lines)
(defalias 'yes-or-no-p 'y-or-n-p)
(defalias 'grep-find-dired 'find-grep-dired)

;; make Unicode work right
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; dired buffer names always end in a '/'
(add-hook 'dired-mode-hook 'ensure-buffer-name-ends-in-slash)
(defun ensure-buffer-name-ends-in-slash ()
  "change buffer name to end with slash"
  (let ((name (buffer-name)))
    (if (not (string-match "/$" name))
        (rename-buffer (concat name "/") t))))

(defun path ()
  "show current buffer's full filename and copy it to clipboard"
  (interactive)
  (shell-command (concat "echo " buffer-file-name " | pbcopy"))
  (message buffer-file-name))

(setenv "PATH" (concat
                "/bin:"
                "/sbin:"
                "/usr/bin:"
                "/usr/sbin:"
                "/usr/local/bin:"))

(setenv "NODE_PATH" "/usr/local/lib/node_modules")

(server-start)

(require 'coffee-config)
(require 'command-runner)
(require 'javascript-config)
(require 'keys-config)
(require 'markdown-config)
(require 'org-config)
(require 'visuals-config)
(require 'whitespace-config)
(require 'yasnippet-config)

(provide 'emacs-config)
