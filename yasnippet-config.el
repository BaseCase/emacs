(add-to-list 'load-path (concat cjb-load-path "yasnippet"))
(require 'yasnippet)

(setq yas/root-directory (concat cjb-load-path "yasnippet/snippets"))
(yas/load-directory yas/root-directory)
(yas/initialize)

(provide 'yasnippet-config)
