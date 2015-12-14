;--------------------;
;;; User Interface ;;;
;--------------------;

; always use spaces, not tabs, when indenting
(setq indent-tabs-mode nil)
 
; ignore case when searching
(setq case-fold-search t)

; require final newlines in files when they are saved
(setq require-final-newline t)

; window modifications
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

; set the keybinding so that you can use f4 for goto line
(global-set-key [f4] 'goto-line)

(provide 'ui-settings)
