(add-to-list 'load-path (concat cjb-load-path "handlebars-mode"))
(require 'handlebars-mode)

(add-to-list 'auto-mode-alist '("\\.hbs$" . handlebars-mode))

(provide 'handlebars-config)
