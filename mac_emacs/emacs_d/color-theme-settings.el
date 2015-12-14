;-----------------;
;;; Color Theme ;;;
;-----------------;

; use the "Subtle Hacker" color theme as a base for the custom scheme
(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0")
(require 'color-theme)
(color-theme-initialize)
(setq color-theme-is-global t)
(color-theme-subtle-hacker)

(custom-set-faces
 '(default ((t (:inherit nil :stipple nil :background "gray2" :foreground "#FFF991" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 83 :width normal :foundry "unknown" :family "DejaVu Sans Mono"))))
 '(border ((t nil)))
 '(cursor ((t (:background "firebrick1" :foreground "black"))))
 '(font-lock-comment-delimiter-face ((default (:inherit font-lock-comment-face :weight ultra-bold)) (((class color) (min-colors 16)) nil)))
 '(font-lock-comment-face ((t (:foreground "lime green"))))
 '(font-lock-doc-face ((t (:foreground "tomato" :slant italic))))
 '(font-lock-function-name-face ((t (:foreground "deep sky blue" :underline t :weight bold))))
 '(font-lock-keyword-face ((t (:foreground "gold" :weight bold))))
 '(font-lock-string-face ((t (:foreground "tomato" :slant italic))))
 '(fringe ((nil (:background "black"))))
 '(highlight ((t (:background "khaki1" :foreground "black" :box (:line-width -1 :color "firebrick1")))))
 '(highlight-current-line-face ((t (:inherit highlight))))
 '(lazy-highlight ((t (:background "paleturquoise" :foreground "black"))))
 '(link ((t (:foreground "DodgerBlue3" :underline t))))
 '(menu ((t (:background "gray2" :foreground "#FFF991"))))
 '(minibuffer-prompt ((t (:foreground "royal blue"))))
 '(mode-line ((t (:background "dark olive green" :foreground "dark blue" :box (:line-width -1 :color "gray75") :weight bold))))
 '(mode-line-buffer-id ((t (:background "dark olive green" :foreground "beige"))))
 '(mode-line-highlight ((((class color) (min-colors 88)) nil)))
 '(mode-line-inactive ((t (:background "dark olive green" :foreground "dark khaki" :weight light))))
 '(mouse ((t (:background "Grey" :foreground "black"))))
 '(trailing-whitespace ((((class color) (background dark)) (:background "firebrick1")))))

; make sure the frames have the dark background mode by default
(setq default-frame-alist (quote (
  (frame-background-mode . dark)
)))

(provide 'color-theme-settings)
