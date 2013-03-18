(add-to-list 'load-path (concat cjb-load-path "color-theme"))
(require 'color-theme)

(setq inhibit-splash-screen t
      initial-scratch-message nil
      scroll-conservatively 5)
(tool-bar-mode -1)
(show-paren-mode 1)
(column-number-mode 1)
(global-hl-line-mode t)
(set-face-background 'hl-line "#333")

(setq default-frame-alist
      '(
        (font . "-apple-Ubuntu_Mono-medium-normal-normal-*-18-*-*-*-m-0-iso10646-1")
        (width . 80)
        (height . 30)))

(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-vivid-chalk)))

(defadvice other-window (after dynamic-resize-on-switch-window activate)
  "Switching windows causes the new active to have at least 80 columns"
  (when (< (window-body-width) 80)
    (enlarge-window (- 80 (window-body-width)) t)))

(provide 'visuals-config)
