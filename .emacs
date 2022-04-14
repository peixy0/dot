(defalias 'yes-or-no-p 'y-or-n-p)

(setq url-proxy-services
      '(("no_proxy" . "^\\(localhost\\|10.*\\)")
        ("http" . "10.144.1.10:8080")
        ("https" . "10.144.1.10:8080")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-default nil)
 '(before-save-hook '(delete-trailing-whitespace))
 '(blink-cursor-mode nil)
 '(column-number-mode nil)
 '(compile-command "cd $BUILD_DIR; ninja")
 '(create-lockfiles nil)
 '(current-language-environment "UTF-8")
 '(delete-selection-mode t)
 '(display-line-numbers nil)
 '(display-line-numbers-type 'relative)
 '(electric-pair-mode t)
 '(global-auto-revert-mode t)
 '(global-hl-line-mode t)
 '(horizontal-scroll-bar-mode nil)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(initial-scratch-message nil)
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(mode-line-percent-position nil)
 '(mouse-wheel-progressive-speed nil)
 '(org-adapt-indentation nil)
 '(org-tags-column 0)
 '(org-todo-keywords
   '((sequence "TODO" "IN PROGRESS" "PENDING" "|" "OBSOLETE" "DONE")))
 '(scroll-bar-mode nil)
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
 '(default ((t (:family "Hack" :foundry "SRC" :slant normal :weight normal :height 102 :width normal)))))

(set-fontset-font t 'han (font-spec :family "Microsoft Yahei"))

(add-hook 'prog-mode-hook #'display-line-numbers-mode)

(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")))
(package-initialize)

(eval-when-compile
  (add-to-list 'load-path "~/.emacs.d/elisp/ttcn-el/")
  (add-to-list 'load-path "~/.emacs.d/elisp/misc/")
  (require 'use-package))

(use-package dracula-theme
  :ensure t
  :config
  (load-theme 'dracula t))

(use-package tree-sitter-langs
  :ensure t)

(use-package tree-sitter
  :ensure t
  :config
  (global-tree-sitter-mode)
  (add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode)
  :after tree-sitter-langs)

(use-package all-the-icons
  :ensure t)

(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(use-package undo-fu
  :ensure t)

(use-package evil
  :ensure t
  :init
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  (setq evil-undo-system 'undo-fu)
  :config
  (evil-mode t)
  (evil-define-key* 'motion 'global
    ";" #'evil-ex
    ":" #'evil-repeat-find-char)
  :after undo-fu)

(use-package evil-collection
  :ensure t
  :config
  (evil-collection-init)
  :after evil)

(use-package evil-surround
  :ensure t
  :config
  (global-evil-surround-mode t)
  :after evil)

(use-package ivy
  :ensure t
  :config
  (ivy-mode t)
  (setq ivy-initial-inputs-alist nil)
  (setq ivy-use-virtual-buffers t))

(use-package counsel
  :ensure t
  :bind (("C-s" . swiper-isearch)
         ("C-M-s" . swiper-all)
         ("C-x C-f" . counsel-find-file)
         ("M-y" . counsel-yank-pop)
         ("<f1> f" . counsel-describe-function)
         ("<f1> v" . counsel-describe-variable)
         ("<f1> l" . counsel-find-library)
         ("<f2> i" . counsel-info-lookup-symbol)
         ("<f2> u" . counsel-unicode-char)
         ("<f2> j" . counsel-set-variable)
         ("C-x b" . counsel-ibuffer)
         ("C-c f" . counsel-git)
         ("C-c g" . counsel-rg)
         ("C-c b" . counsel-bookmark))
  :config
  (counsel-mode t)
  :after ivy)

(use-package amx
  :ensure t
  :config
  (amx-mode)
  :after ivy counsel)

(use-package magit
  :ensure t
  :bind (("C-x M-g" . 'magit-dispatch)
         ("C-c M-g" . 'magit-file-dispatch)))

(use-package go-mode
  :ensure t)

(use-package web-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.svelte\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.vue\\'" . web-mode)))

(use-package flycheck
  :ensure t)

(use-package company
  :ensure t)

(use-package lsp-mode
  :ensure t
  :defer t
  :bind (("C-c =" . 'lsp-format-buffer)
         ("C-c a" . 'lsp-clangd-find-other-file))
  :hook ((c++-mode . lsp-deferred)
         (ttcn-3-mode . lsp-deferred))
  :config
  (setq read-process-output-max (* 1024 1024))
  (setq lsp-restart 'auto-restart)
  (setq lsp-enable-on-type-formatting nil)
  (setq lsp-modeline-diagnostics-enable nil)
  (setq lsp-headerline-breadcrumb-enable nil)
  (setq lsp-enable-folding nil)
  (setq lsp-enable-imenu nil)
  (setq lsp-enable-snippet nil)
  (setq lsp-clients-clangd-args
        '("-j=4"
          "--background-index"
          "--log=error"
          "--clang-tidy")))

(use-package treemacs
  :ensure t
  :defer t
  :bind (("<f7>" . treemacs)
         ("M-0" . treemacs-select-window))
  :config
  (setq treemacs-follow-mode nil)
  (setq treemacs-git-mode nil)
  (setq treemacs-position 'right)
  (setq treemacs-width 60)
  (setq treemacs-width-is-initially-locked nil)
  (setq treemacs-no-png-images t)
  (define-key treemacs-mode-map [mouse-1] #'treemacs-single-click-expand-action))

(use-package treemacs-evil
  :ensure t
  :after treemacs evil)

(use-package lsp-treemacs
  :ensure t
  :config
  (lsp-treemacs-sync-mode t)
  :after lsp-mode treemacs)

(use-package mark-highlight
  :bind (("<f5>" . mark-highlight-toggle)
         ("S-<f5>" . mark-highlight-reset-universe)))

(use-package ttcn3
  :config
  (add-to-list 'auto-mode-alist '("\\.ttcn3\\'" . ttcn-3-mode)))

(defun where-am-i ()
  (interactive)
  (let* ((f (buffer-file-name))
         (n (line-number-at-pos))
         (result (format "%s:%d" f n)))
    (message result)
    (kill-new result)))

(global-set-key (kbd "<f12>") 'where-am-i)
(global-set-key (kbd "C-c m") 'compile)

(defun find-cmake (&optional path)
  (interactive)
  (let ((target (expand-file-name "CMakeLists.txt" path)))
    (if (file-exists-p target)
        (find-file target)
      (let* ((dir (file-name-directory (directory-file-name target)))
             (parent (file-name-directory (directory-file-name dir))))
        (if (not (equal parent path))
            (find-cmake parent)
          (message "Found nothing..."))))))

(defun kill-all-buffers ()
  (interactive)
  (mapc 'kill-buffer (buffer-list)))
