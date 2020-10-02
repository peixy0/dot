(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")))
(setq url-proxy-services
      '(("no_proxy" . "^\\(localhost\\|10.*\\)")
        ("http" . "10.144.1.10:8080")
        ("https" . "10.144.1.10:8080")))
(package-initialize)

(eval-when-compile
  (add-to-list 'load-path "~/.emacs.d/elisp/cc-mode/")
  (add-to-list 'load-path "~/.emacs.d/elisp/ttcn-el/")
  (add-to-list 'load-path "~/.emacs.d/elisp/misc/")
  (require 'use-package))

(use-package dracula-theme
  :config
  (load-theme 'dracula t))

(use-package evil
  :init
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  :config
  (evil-mode t))

(use-package evil-collection
  :config
  (evil-collection-init)
  :after evil magit lsp-mode)

(use-package evil-surround
  :config
  (global-evil-surround-mode t)
  :after evil)

(use-package all-the-icons)

(use-package treemacs
  :bind (("<f7>" . treemacs)
         ("M-0" . treemacs-select-window))
  :config
  (setq treemacs-position 'right)
  (setq treemacs-width 60)
  (define-key treemacs-mode-map [mouse-1] #'treemacs-single-click-expand-action))

(use-package treemacs-evil
  :after treemacs evil)

(use-package treemacs-all-the-icons
  :config
  (treemacs-load-theme "all-the-icons")
  :after treemacs all-the-icons)

(use-package ivy
  :config
  (ivy-mode t)
  (setq ivy-use-virtual-buffers t))

(use-package counsel
  :bind (("C-s" . swiper-isearch)
         ("M-x" . counsel-M-x)
         ("C-x C-f" . counsel-find-file)
         ("M-y" . counsel-yank-pop)
         ("<f1> f" . counsel-describe-function)
         ("<f1> v" . counsel-describe-variable)
         ("<f1> l" . counsel-find-library)
         ("<f2> i" . counsel-info-lookup-symbol)
         ("<f2> u" . counsel-unicode-char)
         ("<f2> j" . counsel-set-variable)
         ("C-x b" . ivy-switch-buffer)
         ("C-c f" . counsel-git)
         ("C-c g" . counsel-ag)
         ("C-c b" . counsel-bookmark))
  :config
  (counsel-mode t)
  :after ivy)

(use-package magit
  :bind (("C-x M-g" . 'magit-dispatch)
         ("C-c M-g" . 'magit-file-dispatch)))

(use-package lsp-mode
  :hook ((c++-mode . lsp-deferred))
  :config
  (setq lsp-clients-clangd-args '("--background-index=false")))

(when (display-graphic-p)
  (use-package nyan-mode
    :config
    (nyan-mode t)))

(use-package google-c-style
  :hook ((c-mode-common . google-set-c-style)
         (c-mode-common . google-make-newline-indent)))

(use-package ttcn3
  :config
  (add-to-list 'auto-mode-alist '("\\.ttcn3\\'" . ttcn-3-mode)))

(use-package mark-highlight
  :bind (("<f5>" . mark-highlight-toggle)
         ("S-<f5>" . mark-highlight-reset-universe)))

(defalias 'yes-or-no-p 'y-or-n-p)

(global-set-key (kbd "<f12>")
                (lambda ()
                  (interactive)
                  (message (buffer-file-name))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-default nil)
 '(before-save-hook '(delete-trailing-whitespace))
 '(blink-cursor-mode nil)
 '(current-language-environment "UTF-8")
 '(display-line-numbers 'relative)
 '(electric-pair-mode t)
 '(global-auto-revert-mode t)
 '(global-hl-line-mode t)
 '(horizontal-scroll-bar-mode t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(initial-scratch-message nil)
 '(make-backup-files nil)
 '(mouse-wheel-progressive-speed nil)
 '(org-adapt-indentation nil)
 '(org-tags-column 0)
 '(org-todo-keywords
   '((sequence "TODO" "IN PROGRESS" "WAITING" "|" "OBSOLETE" "DONE")))
 '(package-selected-packages
   '(treemacs-all-the-icons treemacs-evil lsp-treemacs use-package nyan-mode magit lsp-ivy flycheck evil-surround evil-collection dracula-theme counsel company))
 '(show-paren-mode t)
 '(split-height-threshold 0)
 '(split-width-threshold nil)
 '(tab-width 4)
 '(tool-bar-mode nil)
 '(truncate-lines t)
 '(vc-handled-backends '(git)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Hack" :foundry "SRC" :slant normal :weight normal :height 85 :width normal)))))

(set-fontset-font t 'han (font-spec :family "Microsoft Yahei"))
