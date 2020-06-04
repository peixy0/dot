(defalias 'yes-or-no-p 'y-or-n-p)

(setq font-use-system-font t)

(setq url-proxy-services
	  '(("no_proxy" . "^\\(localhost\\|10.*\\)")
		("http" . "10.144.1.10:8080")
		("https" . "10.144.1.10:8080")))

(add-to-list 'load-path "~/third_party/cc-mode/")
(add-to-list 'load-path "~/third_party/google-c-style/")

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(load-theme 'dracula t)

(require 'evil)
(evil-mode t)

(require 'evil-magit)

(require 'neotree)
(global-set-key [f7] 'neotree-toggle)
(evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-quick-look)
(evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
(evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "g") 'neotree-refresh)
(evil-define-key 'normal neotree-mode-map (kbd "n") 'neotree-next-line)
(evil-define-key 'normal neotree-mode-map (kbd "p") 'neotree-previous-line)
(evil-define-key 'normal neotree-mode-map (kbd "A") 'neotree-stretch-toggle)
(evil-define-key 'normal neotree-mode-map (kbd "H") 'neotree-hidden-file-toggle)

(require 'projectile)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-default nil)
 '(before-save-hook (quote (delete-trailing-whitespace)))
 '(blink-cursor-mode nil)
 '(counsel-mode t)
 '(current-language-environment "UTF-8")
 '(custom-enabled-themes (quote (dracula)))
 '(display-line-numbers (quote relative))
 '(global-auto-revert-mode t)
 '(horizontal-scroll-bar-mode t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(make-backup-files nil)
 '(mouse-wheel-progressive-speed nil)
 '(neo-hide-cursor t)
 '(neo-theme (quote nerd))
 '(neo-window-fixed-size nil)
 '(neo-window-position (quote right))
 '(neo-window-width 50)
 '(nyan-mode t)
 '(package-selected-packages
   (quote
    (evil-magit ag swiper projectile nyan-mode neotree evil dracula-theme)))
 '(projectile-completion-system (quote ivy))
 '(projectile-mode t nil (projectile))
 '(projectile-switch-project-action (quote neotree-projectile-action))
 '(show-paren-mode t)
 '(tab-width 4)
 '(tool-bar-mode nil)
 '(truncate-lines t)
 '(vc-handled-backends (quote (git))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Hack" :foundry "SRC" :slant normal :weight normal :height 90 :width normal)))))
