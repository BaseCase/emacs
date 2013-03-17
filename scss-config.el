(add-to-list 'load-path (concat cjb-load-path "scss-mode"))
(require 'scss-mode)

(add-to-list 'auto-mode-alist '("\\.scss$" . scss-mode))
(set-variable 'scss-compile-at-save nil)

(provide 'scss-config)
