(add-to-list 'load-path (concat cjb-load-path "js2-mode"))
(require 'js2-mode)

(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-hook 'js2-mode-hook '(lambda ()
                            (setq js2-bounce-indent-p t)
                            (js2-mode-hide-warnings-and-errors)))

(provide 'javascript-config)
