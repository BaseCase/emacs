
;(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

(require 'color-theme)
(color-theme-initialize)
(require 'zenburn)
(require 'vivid-chalk)
(require 'zen-and-art)
;(color-theme-zenburn)
(color-theme-vivid-chalk)
;(color-theme-zen-and-art)

;(setq-default show-trailing-whitespace t)

(set-default-font "-apple-Ubuntu_Mono-medium-normal-normal-*-16-*-*-*-p-0-iso10646-1")

;(set-default-font "-apple-consolas-medium-r-normal--18-0-72-72-m-0-iso10646-1")
;(set-default-font "Consolas-12")
;(set-default-font "-microsoft-Consolas-normal-normal-normal-*-21-*-*-*-m-0-iso10646-1")
(setq initial-frame-alist
          '((top . 50) (left . 100) (width . 90) (height . 30)))

;(add-to-list 'default-frame-alist '(font . "-apple-consolas-medium-r-normal--18-0-72-72-m-0-iso10646-1"))



;highlight current line
(global-hl-line-mode 1)
(set-face-background 'hl-line "gray16")

;transparent emacs!!1!!1!one!! 
(defun djcb-opacity-modify (&optional dec)
  "modify the transparency of the emacs frame; if DEC is t,
    decrease the transparency, otherwise increase it in 10%-steps"
  (let* ((alpha-or-nil (frame-parameter nil 'alpha)) ; nil before setting
	 (oldalpha (if alpha-or-nil alpha-or-nil 100))
	 (newalpha (if dec (- oldalpha 10) (+ oldalpha 10))))
    (when (and (>= newalpha frame-alpha-lower-limit) (<= newalpha 100))
      (modify-frame-parameters nil (list (cons 'alpha newalpha))))))

;; C-8 will increase opacity (== decrease transparency)
;; C-9 will decrease opacity (== increase transparency
;; C-0 will returns the state to normal
(global-set-key (kbd "C-9") '(lambda()(interactive)(djcb-opacity-modify)))
(global-set-key (kbd "C-8") '(lambda()(interactive)(djcb-opacity-modify t)))
(global-set-key (kbd "C-0") '(lambda()(interactive)
                               (modify-frame-parameters nil `((alpha . 100)))))

;; S-C-left and right will horizontally resize windows
;; S-C-up and down will vertically resize them
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

;; make frame title have full file path
(setq frame-title-format
      (list (format "%s %%S: %%j " (system-name))
	    '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))

;; fix garbage chars in comint mode output
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 
          'ansi-color-for-comint-mode-on)

(set-variable 'redisplay-dont-pause t)

(provide 'visuals-config)
