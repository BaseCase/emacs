;; easy in-editor running of Jasmine specs
;; (and maybe other tests too if I get not-lazy

(require 'ansi-color)

(defadvice display-message-or-buffer (before ansi-color activate)
  "Process ANSI color codes in shell output."
  (let ((buf (ad-get-arg 0)))
    (and (bufferp buf)
         (string= (buffer-name buf) "*Shell Command Output*")
         (with-current-buffer buf
           (ansi-color-apply-on-region (point-min) (point-max))))))

(defun cjb-spec-runner ()
  "Run Jasmine spec right here, in your very own editor. You don't even need pants!"
  (interactive)
  (shell-command (concat "jasmine-node --coffee " cjb-current-spec)))

(defun cjb-set-current-spec ()
  "Set the current buffer's file to the current spec"
  (interactive)
  (setq cjb-current-spec buffer-file-name))

(defcustom cjb-current-spec "foo" "the location of the test(s) to run")
