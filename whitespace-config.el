(setq-default tab-width 4)
(setq tab-stop-list (number-sequence 4 120 4))
(global-whitespace-mode t)
(setq whitespace-style
      '(face
        space-before-tab
        tab-mark))

;; use spaces by default, but enable tabs for certain modes
(setq-default indent-tabs-mode nil)
(add-hook 'js2-mode-hook
          (lambda () (setq indent-tabs-mode t)))

;;set Coffeescript indenting to the standard
(defun coffee-custom ()
  "coffee-mode-hook"
 (set (make-local-variable 'tab-width) 2))
(add-hook 'coffee-mode-hook
  '(lambda() (coffee-custom)))

;; (add-to-list 'load-path (concat cjb-load-path "smarttabs"))
;; (require 'smart-tabs-mode)
;; (add-hook 'js2-mode-hook 'smart-tabs-mode-enable)
;; (smart-tabs-advice js2-indent-line js2-basic-offset)

(provide 'whitespace-config)
