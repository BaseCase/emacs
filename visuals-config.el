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
(add-to-list 'load-path (concat cjb-load-path "rainbow-mode"))
(require 'rainbow-mode)

(setq default-frame-alist
      '(
        (font . "-apple-Ubuntu_Mono-medium-normal-normal-*-18-*-*-*-m-0-iso10646-1")
        (width . 130)
        (height . 45)))

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

(defadvice other-window (after dynamic-resize-on-switch-window activate)
  "Switching windows causes the new active to have at least 80 columns"
  (when (< (window-body-width) 80)
    (enlarge-window (- 80 (window-body-width)) t)))

(provide 'visuals-config)
