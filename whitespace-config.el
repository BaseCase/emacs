(setq-default tab-width 4)
(setq tab-stop-list (number-sequence 4 120 4))
(global-whitespace-mode t)
(setq-default indent-tabs-mode nil)
(setq whitespace-style
      '(face
        tabs
        tab-mark
        space-before-tab
        trailing))

(provide 'whitespace-config)
