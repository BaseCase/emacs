(tool-bar-mode -1)
;;(menu-bar-mode -1)
(set-variable 'scroll-conservatively 5)
(setq inhibit-splash-screen t)
(set-variable 'initial-scratch-message nil)
(show-paren-mode 1)
(setq mouse-wheel-scroll-amount '(1))
(setq mouse-wheel-progressive-speed nil)
(column-number-mode 1)

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

(set-default-font "-apple-Ubuntu_Mono-medium-normal-normal-*-16-*-*-*-p-0-iso10646-1")
;;(blink-cursor-mode -1)

;; transparent emacs!!1!!1!one!! 
(defun djcb-opacity-modify (&optional dec)
  "modify the transparency of the emacs frame; if DEC is t,
    decrease the transparency, otherwise increase it in 10%-steps"
  (let* ((alpha-or-nil (frame-parameter nil 'alpha)) ; nil before setting
         (oldalpha (if alpha-or-nil alpha-or-nil 100))
         (newalpha (if dec (- oldalpha 10) (+ oldalpha 10))))
    (when (and (>= newalpha frame-alpha-lower-limit) (<= newalpha 100))
      (modify-frame-parameters nil (list (cons 'alpha newalpha))))))

;; display full file path in frame title
(setq frame-title-format
      (list (format "%s %%S: %%j " (system-name))
            '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))

(add-to-list 'load-path (concat cjb-load-path "rainbow-mode"))
(require 'rainbow-mode)

(provide 'visuals-config)
