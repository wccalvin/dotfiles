;------------------------;
;;; Python Programming ;;;
;------------------------;

; python-mode
(setq py-install-directory "~/.emacs.d/python-mode-6.0.11")
(add-to-list 'load-path py-install-directory)
(require 'python-mode) 

; use IPython
(setq-default py-shell-name "ipython")
(setq-default py-which-bufname "IPython")
; use the wx backend, for both mayavi and matplotlib
(setq py-python-command-args 
  '("--gui=wx" "--pylab=wx" "-colors" "Linux"))
(setq py-force-py-shell-name-p t)

; switch to the interpreter after executing code
(setq py-shell-switch-buffers-on-execute-p t)
(setq py-switch-buffers-on-execute-p t)
; don't split windows
(setq py-split-windows-on-execute-p nil)
; try to automagically figure out indentation
(setq py-smart-indentation t)

; pymacs
(add-to-list 'load-path "~/.emacs.d/pymacs-0.25")
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
(autoload 'pymacs-autoload "pymacs")
(setq py-load-pymacs-p t)

; ropemacs
(require 'pymacs)
(pymacs-load "ropemacs" "rope-")

(provide 'python-settings)
