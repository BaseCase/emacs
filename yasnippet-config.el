(add-to-list 'load-path (concat cjb-load-path "yasnippet"))
(require 'yasnippet)

(setq yas/root-directory (concat cjb-load-path "yasnippet/snippets"))
(yas/load-directory yas/root-directory)
(yas/initialize)

(require 'dropdown-list)
(setq yas/prompt-functions '(yas/dropdown-prompt
                             yas/ido-prompt
                             yas/completing-prompt))

(provide 'yasnippet-config)
