(add-to-list 'load-path (concat cjb-load-path "js2-mode"))
(require 'js2-mode)
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-hook 'js2-mode-hook '(lambda ()
                            (setq js2-bounce-indent-p t)
                            (setq js2-basic-offset 2)))

(provide 'javascript-config)
