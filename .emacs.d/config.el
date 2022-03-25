(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(global-display-line-numbers-mode)
(setq display-line-numbers-type 'relative)

(use-package which-key
  :ensure t
  :init
  (setq which-key-side-window-location 'bottom
	which-key-sort-order #'which-key-key-order-alpha
	which-key-sort-uppercase-first nil
	which-key-add-column-padding 1
	which-key-max-display-columns nil
	which-key-min-display-lines 6
	which-key-side-window-slot -10
	which-key-side-window-max-height 0.25
	which-key-idle-delay 0.8
	which-key-max-description-length 25
	which-key-allow-imprecise-window-fit t
	which-key-separator "→" ))
(which-key-mode)

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

(use-package all-the-icons
  :ensure t)

(use-package dashboard
	     :ensure t
	     :config
	     (dashboard-setup-startup-hook)
	     (setq dashboard-set-file-icons t)
	     (setq dashboard-set-heading-icons t)
	     (setq dashboard-startup-banner "~/.emacs.d/avatar.png")
	     (setq dashboard-banner-logo-title "I like to code"))

(use-package doom-modeline
  :ensure t)
(doom-modeline-mode 1)

(add-to-list 'default-frame-alist
	     '(font . "JetBrains Mono-11"))

(use-package pretty-symbols
    :ensure t)
(global-prettify-symbols-mode)

(use-package org-bullets
  :ensure t)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

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

(use-package yasnippet
  :ensure t
  :config
  (setq yas-snippet-dirs '("~/.emacs.d/snippets"))
  (yas-global-mode 1))

(use-package emojify
  :ensure t)
(global-emojify-mode)

(setq use-dialog-box nil)
(setq use-file-dialog nil)
(setq make-backup-files nil)
(setq auto-save-default nil)
(global-subword-mode 1)
(defalias 'yes-or-no-p 'y-or-n-p)
