(add-to-list 'load-path (concat cjb-load-path "yasnippet"))
(require 'yasnippet)
(yas/initialize)
(yas/load-directory (concat cjb-load-path "yasnippet/snippets"))
(yas/global-mode 1)

(provide 'yasnippet-config)
