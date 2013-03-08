; make sure the output display works
(require 'ansi-color)

(defadvice display-message-or-buffer (before ansi-color activate)
  "Process ANSI color codes in shell output."
  (let ((buf (ad-get-arg 0)))
    (and (bufferp buf)
         (string= (buffer-name buf) "*Shell Command Output*")
         (with-current-buffer buf
           (ansi-color-apply-on-region (point-min) (point-max))))))

(setq max-mini-window-height 1.0)

(defun cjb-command-runner ()
  (interactive)
  (save-buffer)
  (shell-command cjb-current-command))

(defun cjb-set-current-command (new-com)
  (interactive "sSet command: ")
  (setq cjb-current-command new-com)
  (message (concat "Set command to " cjb-current-command)))

(defcustom cjb-current-command
  "echo \"You have to set this.\""
  "the command you want to run")

(provide 'command-runner)
