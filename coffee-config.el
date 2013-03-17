(add-to-list 'load-path (concat cjb-load-path "coffee-mode"))
(require 'coffee-mode)

(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("_template\\.coffee$" . html-mode)) ;; for Backbone template files
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))

;;set Coffeescript indenting to the standard 2 spaces
(add-hook 'coffee-mode-hook '(lambda ()
                               (set (make-local-variable 'tab-width) 2)))

(provide 'coffee-config)
