(tool-bar-mode -1)
(setq inhibit-splash-screen t)
(set-variable 'initial-scratch-message nil)
(set-variable 'scroll-conservatively 5)
(show-paren-mode 1)
(column-number-mode 1)
(global-hl-line-mode t)
(set-face-background 'hl-line "#333")
(setq mouse-wheel-scroll-amount '(1))
(setq mouse-wheel-progressive-speed nil)

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

(set-default-font "-apple-Ubuntu_Mono-medium-normal-normal-*-17-*-*-*-p-0-iso10646-1")

(add-to-list 'load-path (concat cjb-load-path "rainbow-mode"))
(require 'rainbow-mode)

(provide 'visuals-config)
