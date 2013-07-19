(add-hook 'python-mode-hook
          '(lambda ()
             (set (make-local-variable 'electric-indent-functions)
                  (list (lambda (arg) 'no-indent)))))

(add-hook 'python-mode-hook
          '(lambda ()
             (local-set-key (kbd "<return>") 'newline-and-indent)))


(provide 'python-config)
