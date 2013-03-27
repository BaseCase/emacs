(add-to-list 'custom-theme-load-path "~/emacs")
(load-theme 'vivid-chalk t)
(setq inhibit-splash-screen t
      initial-scratch-message nil
      scroll-conservatively 5)
(tool-bar-mode -1)
(show-paren-mode 1)
(column-number-mode 1)
(global-hl-line-mode t)
(global-linum-mode)

(setq default-frame-alist
      '(
        (width . 80)
        (height . 30)))

(defadvice other-window (after dynamic-resize-on-switch-window activate)
  "Switching windows causes the new active to have at least 80 columns"
  (when (< (window-body-width) 80)
    (enlarge-window (- 80 (window-body-width)) t)))

(provide 'visuals-config)
