;; init.el --- Emacs configuration

;; MAC Command Key as M
;; -------------------------------------------------------------------

;; Configuring Emacs for OS X
(defun system-is-mac ()
  (interactive)
  (string-equal system-type "darwin"))

;; command key to be meta instead of option
(if (system-is-mac)
    (setq ns-command-modifier 'meta))


;; INSTALL PACKAGES
;; -------------------------------------------------------------------

(require 'package)

(add-to-list 'package-archives
       '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(better-defaults                     ; add the better-defaults
    elpy                                ; add the elpy package
    ein                                 ; add Emacs Ipython Notebook package
    ;; autopair                         ; add autopair package
    smartparens                         ; add smartparens
    flycheck                            ; add flycheck (dynamic syntax check)
    auto-complete                       ; add auto-completion
    fill-column-indicator               ; add fill-column-indicator
    py-autopep8                         ; change to pep8 rules when saving .py
    org                                 ; add org mode
    material-theme                      ; add material theme
    ;; hc-zenburn-theme                 ; add zenburn-theme
    ;; atom-dark-theme                  ; add atom-dark theme
    ))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)

(elpy-enable)
(elpy-use-ipython)
;; (require 'autopair)
;; (autopair-global-mode) ;; enable autopair in all buffers
(require 'fill-column-indicator)
(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
(setq-default fci-rule-column 79)
(global-fci-mode t)
(ac-config-default)                     ; enable auto-completion
(require 'smartparens-config)
(smartparens-global-mode t)

;; use flycheck not flymake with elpy
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; enable autopep8 formatting on save
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)


;; BASIC CUSTOMIZATION
;; -------------------------------------------------------------------

(setq inhibit-startup-message t) ;; hide the startup message
(load-theme 'material t) ;; load hc-zenburn theme
(global-linum-mode t) ;; enable line numbers globally

;; set the default (start) directory
(if (string= "" (getenv "EMACS_HOME"))
    (defvar emacs_home (getenv "EMACS_HOME")) (defvar emacs_home "~/developer"))
(setq default-directory emacs_home)


;; CPERL CUSTOMIZATION FOR PERL
;; -------------------------------------------------------------------

(defalias 'perl-mode 'cperl-mode)
(setq cperl-electric-keywords t)       ; expands keywords such as
                                       ; foreach, while
(setq cperl-indent-level 4
      cperl-tab-always-indent t
      cperl-electric-parens nil)
(setq cperl-hairy nil)                 ; turn on lots of cperl options


;; ORG MODE CUSTOMIZATION
;; -------------------------------------------------------------------
(require 'org)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

;; init.el ends here
