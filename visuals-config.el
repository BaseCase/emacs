(setq inhibit-splash-screen t)
(set-variable 'initial-scratch-message nil)
(show-paren-mode 1)
(column-number-mode 1)
(global-hl-line-mode t)
(set-face-background 'hl-line "#333")

(add-to-list 'load-path (concat cjb-load-path "color-theme"))
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-vivid-chalk)
     ;(color-theme-vibrant-ink)
     ;(color-theme-zenburn)
     ;(color-theme-hober)
     ))

(add-to-list 'load-path (concat cjb-load-path "rainbow-mode"))
(require 'rainbow-mode)

(provide 'visuals-config)
