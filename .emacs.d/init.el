;; Making my config an org file :)
(org-babel-load-file
 (expand-file-name
  "config.org"
  user-emacs-directory))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("41098e2f8fa67dc51bbe89cce4fb7109f53a164e3a92356964c72f76d068587e" "ba72dfc6bb260a9d8609136b9166e04ad0292b9760a3e2431cf0cd0679f83c3a" default))
 '(package-selected-packages
   '(lsp-ui lsp-mode all-the-icons-ivy-rich all-the-icons-ibuffer all-the-icons-ivy all-the-icons-dired all all-the-icons-completion all-the-icons-gnus pretty-symbols emojify org-bullets all-the-icons beacon magit dashboard ewal-spacemacs-themes use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
