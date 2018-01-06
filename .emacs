(package-initialize)
(load-theme 'dracula t)
(defalias 'yes-or-no-p 'y-or-n-p)

(defun kill-all-buffers ()
  (interactive)
  (mapc 'kill-buffer (buffer-list)))

(global-set-key (read-kbd-macro "C-x C-b") 'bs-show)

(defconst default-c-style '((c-basic-offset . 4)
                            (c-comment-only-line-offset . 0)
                            (c-offsets-alist
                             (inexpr-class . 0)
                             (inline-open . 0)
                             (innamespace . 0)
                             (knr-argdecl-intro . +)
                             (label . 0)
                             (statement-block-intro . +)
                             (statement-cont . +)
                             (substatement-label . 0)
                             (substatement-open . 0))))

(c-add-style "default" default-c-style)

(global-set-key [f7] 'neotree-toggle)

(global-set-key (kbd "C-=") 'er/expand-region)

(global-set-key (kbd "C-/") 'undo-tree-undo)
(global-set-key (kbd "C-?") 'undo-tree-redo)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-default nil)
 '(before-save-hook (quote (delete-trailing-whitespace)))
 '(blink-cursor-mode nil)
 '(c-default-style "default")
 '(column-number-mode t)
 '(current-language-environment "UTF-8")
 '(custom-theme-directory "~/.emacs.d/themes")
 '(electric-pair-mode t)
 '(global-linum-mode t)
 '(global-undo-tree-mode t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(linum-relative-current-symbol ">")
 '(linum-relative-global-mode t)
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(mode-line-in-non-selected-windows nil)
 '(mouse-wheel-progressive-speed nil)
 '(mouse-wheel-scroll-amount (quote (5 ((shift) . 1) ((control)))))
 '(neo-create-file-auto-open t)
 '(neo-show-hidden-files t)
 '(neo-theme (quote nerd))
 '(neo-window-fixed-size nil)
 '(neo-window-width 35)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.org/packages/"))))
 '(package-selected-packages
   (quote
    (undo-tree expand-region linum-relative neotree dracula-theme)))
 '(powerline-default-separator nil)
 '(ring-bell-function (quote ignore))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tab-width 4)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Inconsolata" :slant normal :weight normal :height 130 :width normal)))))
