(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

(unless (package-installed-p 'evil)
  (package-install 'evil))

(unless (package-installed-p 'cider)
  (package-install 'cider))

(add-hook 'clojure-mode-hook #'cider-mode)

(unless (package-installed-p 'dashboard)
  (package-install 'dashboard))

(unless (package-installed-p 'autothemer)
  (package-install 'autothemer))

(unless (package-installed-p 'kurecolor)
  (package-install 'autothemer))

(unless (package-installed-p 'sakura-theme)
  (package-install 'sakura-theme))

(unless (package-installed-p 'ace-window)
  (package-install 'ace-window))

(global-set-key (kbd "M-o") 'ace-window)

(load-theme 'sakura t)

(require 'dashboard)
(dashboard-setup-startup-hook)
(setq dashboard-banner-logo-title "Welcome to Emacs, Anya :3")
(setq dashboard-startup-banner "~/images/lain.gif")

(require 'evil)
(evil-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
