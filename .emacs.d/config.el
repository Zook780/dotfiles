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
	which-key-separator "  " ))
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
;; run all-the-icons-install-fonts after installation

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

(use-package yasnippet
	     :ensure t
	     :config
	     (setq yas-snippet-dirs '("~/.emacs.d/snippets"))
	     (yas-global-mode 1))

(use-package org-bullets
	     :ensure t)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(use-package lsp-mode
  :ensure t
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :hook (
	 (c++-mode . lsp)
	 (c-mode . lsp)
	 (python-mode . lsp)
	 ;; use $sudo pip install python-lsp-server python-language-server
	 (html-mode . lsp)
	 ;; for html npm install -g vscode-html-languageserver-bin and install html-ls I guess from lsp-install-server
	 (css-mode . lsp)
	 ;;for css npm install -g vscode-css-languageserver-bin and install css-ls from lsp-install-server
	 (dart-mode . lsp)
	 ;; if you want which-key integration
	 (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)

;; optionally
(use-package lsp-ui :ensure t :commands lsp-ui-mode)

(use-package flycheck
  :ensure t
  :init
  (global-flycheck-mode t))

(use-package company
  :ensure t)
(add-hook 'after-init-hook 'global-company-mode)

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
