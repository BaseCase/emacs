(add-to-list 'load-path (concat cjb-load-path "web-mode"))
(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.hbs" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jade" . web-mode))

(provide 'web-mode-config)
