(setq-default tab-width 4)
(global-whitespace-mode t)
(setq whitespace-style
 '(face
   space-before-tab
   tab-mark))

;;Smart Tabs Mode: doesn't seem to be working, but could be useful later.
;(add-to-list 'load-path (concat cjb-load-path "smarttabs"))
;(require 'smart-tabs-mode)
;(add-hook 'js2-mode-hook 'smart-tabs-mode-enable)
;(smart-tabs-advice js2-indent-line js2-basic-offset)

(provide 'whitespace-config)
