(add-to-list 'load-path (concat cjb-load-path "js2-mode"))
(require 'js2-mode)
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(setq js2-bounce-indent-p t)
(setq js2-enter-indents-newline t)

(provide 'javascript-config)
