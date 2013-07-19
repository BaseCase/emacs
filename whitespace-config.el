(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

(setq css-indent-offset 2)
(setq python-indent-offset 2)
(setq sgml-basic-offset 2)
(custom-set-variables
 '(js2-basic-offset 2))

(add-hook 'before-save-hook 'whitespace-cleanup)
(setq whitespace-style
      '(face
        tabs
        tab-mark
        space-before-tab
        trailing))

(setq sentence-end-double-space nil)

;; set whitespace mode on only for certain modes:
;; (this might belong in their individual configs...not sure)
(add-hook 'python-mode-hook (lambda () (whitespace-mode t)))
(add-hook 'js2-mode-hook (lambda () (whitespace-mode t)))
(add-hook 'coffee-mode-hook (lambda () (whitespace-mode t)))

(provide 'whitespace-config)
