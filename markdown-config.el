(add-to-list 'load-path (concat cjb-load-path "markdown-mode"))
(require 'markdown-mode)

(autoload 'markdown-mode "markdown-mode.el" t)
(setq auto-mode-alist (cons '("\\.text" . markdown-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.markdown" . markdown-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))

(provide 'markdown-config)
