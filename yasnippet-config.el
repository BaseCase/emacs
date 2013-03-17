(add-to-list 'load-path (concat cjb-load-path "yasnippet"))
(require 'yasnippet)
(require 'dropdown-list)

(setq yas/root-directory (concat cjb-load-path "yasnippet/snippets"))
(yas/load-directory yas/root-directory)
(yas/initialize)
(setq yas/prompt-functions '(yas/dropdown-prompt
                             yas/ido-prompt
                             yas/completing-prompt))

(provide 'yasnippet-config)
