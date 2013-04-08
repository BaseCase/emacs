(add-to-list 'load-path (concat cjb-load-path "dot-mode"))
(require 'dot-mode)

(add-hook 'find-file-hooks 'dot-mode-on)

(provide 'dot-config)
