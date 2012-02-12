(add-to-list 'load-path (concat cjb-load-path "coffee-mode"))
(require 'coffee-mode)
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))

(provide 'coffee-config)
