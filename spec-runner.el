;; easy in-editor running of specs
;; make sure your Node path is set correctly

; make sure the output display works
(require 'ansi-color)

(defadvice display-message-or-buffer (before ansi-color activate)
  "Process ANSI color codes in shell output."
  (let ((buf (ad-get-arg 0)))
    (and (bufferp buf)
         (string= (buffer-name buf) "*Shell Command Output*")
         (with-current-buffer buf
           (ansi-color-apply-on-region (point-min) (point-max))))))


(defun cjb-spec-runner ()
  "Run specs in Emacs!"
  (interactive)
  (shell-command (concat cjb-spec-command cjb-current-spec)))

(defun cjb-set-current-spec ()
  "Set the current buffer's file to the current spec"
  (interactive)
  (setq cjb-current-spec buffer-file-name)
  (message (concat "Set current spec file to " cjb-current-spec)))

(defcustom cjb-current-spec "foo" "the location of the test(s) to run")
(defcustom cjb-spec-command "jasmine-node --coffee " "the command to run specs") ;make sure there's a space there

(provide 'spec-runner)
