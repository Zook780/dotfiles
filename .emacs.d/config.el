(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package ewal-spacemacs-themes
  :if window-system
  :ensure t
  :init
  (load-theme 'ewal-spacemacs-modern t)
  ;; Disabling toolbar/menubar/scrollbar
  (menu-bar-mode -1)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  (electric-pair-mode 1)
  (window-divider-mode 1))

(use-package ewal
  :init (setq ewal-use-built-in-always-p nil
	      ewal-use-built-in-on-failure-p t
	      ewal-built-in-palette "sexy-material"))

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-startup-banner "~/.emacs.d/avatar.png")
  (setq dashboard-banner-logo-title "I like to code"))

(add-to-list 'default-frame-alist
	     '(font . "JetBrains Mono-12"))

(use-package magit
  :ensure t
  :config
  (setq magit-push-always-verify nil)
  (setq git-commit-summary-max-length 50)
  :bind
  ("C-x C-g" . magit-status))

(use-package beacon
  :ensure t
  :config
  (beacon-mode 1))

(setq use-dialog-box nil)
(setq use-file-dialog nil)
(setq make-backup-files nil)
(setq auto-save-default nil)
(global-subword-mode 1)
(defalias 'yes-or-no-p 'y-or-n-p)
