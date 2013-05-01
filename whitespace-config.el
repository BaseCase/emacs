(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

(setq css-indent-offset 2)
(setq python-indent-offset 2)
(setq sgml-basic-offset 2)
(custom-set-variables
 '(js2-basic-offset 2))

(global-whitespace-mode t)
(add-hook 'before-save-hook 'whitespace-cleanup)
(setq whitespace-style
      '(face
        tabs
        tab-mark
        space-before-tab
        trailing))

(setq sentence-end-double-space nil)

(provide 'whitespace-config)
