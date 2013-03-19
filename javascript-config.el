(add-to-list 'load-path (concat cjb-load-path "js2-mode"))
(require 'js2-mode)

(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-hook 'js2-mode-hook '(lambda ()
                            (setq js2-bounce-indent-p t)
                            (setq js2-basic-offset 4) ;; normally prefer 2, this is job's house style
                            (js2-mode-hide-warnings-and-errors)))

(provide 'javascript-config)
