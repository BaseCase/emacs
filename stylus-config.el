(add-to-list 'load-path (concat cjb-load-path "stylus-mode"))
(require 'stylus-mode)

(add-to-list 'auto-mode-alist '("\\.styl$" . stylus-mode))

(provide 'stylus-config)
