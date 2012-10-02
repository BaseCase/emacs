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

;;set Coffeescript indenting to the standard 2 spaces
(defun coffee-custom ()
  "coffee-mode-hook"
  (set (make-local-variable 'tab-width) 2))
(add-hook 'coffee-mode-hook
          '(lambda() (coffee-custom)))


(provide 'whitespace-config)
