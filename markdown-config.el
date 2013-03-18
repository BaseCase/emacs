(add-to-list 'load-path (concat cjb-load-path "markdown-mode"))
(require 'markdown-mode)

(add-to-list 'auto-mode-alist '("\\.markdown$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))

(provide 'markdown-config)
