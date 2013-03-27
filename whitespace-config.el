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
;;disable for now...getting too many whitespace diffs in current codebase
;;(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; current job house style:
(add-hook 'html-mode-hook '(lambda ()
                             (set (make-local-variable 'sgml-basic-offset) 4)))

(provide 'whitespace-config)
