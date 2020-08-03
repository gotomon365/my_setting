(global-set-key [(control ?h)] 'delete-backward-char)
(display-time-mode 1)
;; hide tool bar
(tool-bar-mode 0)
(menu-bar-mode 0)
;; highlight
(global-hl-line-mode 1)

(setq inhibit-startup-message t)
(fset 'yes-or-no-p 'y-or-n-p)
(global-set-key (kbd "<f5>") 'revert-buffer)

(use-package try
  :ensure t)

(use-package which-key
  :ensure t
  :config (which-key-mode))

;; org-mode stuff
;;(use-package org-bullets
;;  :ensure t
;;  :config
;;  (add-hook 'org-mode-hook (lambda() (org-bullets-mode 1))))

(setq indo-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

(defalias 'list-buffers 'ibuffer)
;;(defalias 'list-buffers 'ibuffer-other-window)

(use-package ace-window
  :ensure t
  :init
  (progn
    (global-set-key [remap other-window] 'ace-window)
    (custom-set-faces
     '(aw-leading-char-face
       ((t (:inherit ace-jump-face-foreground :height 3.0)))))
    ))

(use-package ivy
 :ensure t
  :diminish (ivy-mode)
  :bind (("C-x b" . ivy-switch-buffer))
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq ivy-display-style 'fancy))

(use-package swiper
  :ensure t
  :bind (("C-s" . swiper)
	 ("C-r" . swiper)
	 ("C-c C-r" . ivy-resume))
;;	 ("M-x" . counsel-M-x)
;;	 ("C-x C-f" . counsel-find-file))
  :config
  (progn
    (ivy-mode 1)
    (setq ivy-use-virtual-buffers t)
    (setq ivy-display-style 'fancy)
    ;;   (setq enable-recursive-minibuffers t)
    ;; enable this if you want `swiper' to use it
    ;; (setq search-default-mode #'char-fold-to-regexp)
  ;;  (global-set-key "\C-s" 'swiper)
;;(global-set-key (kbd "C-c C-r") 'ivy-resume)
;;    (global-set-key (kbd "<f6>") 'ivy-resume)
;;    (global-set-key (kbd "M-x") 'counsel-M-x)
;;    (global-set-key (kbd "C-x C-f") 'counsel-find-file)
;;    (global-set-key (kbd "<f1> f") 'counsel-describe-function)
;;    (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
;;    (global-set-key (kbd "<f1> l") 'counsel-find-library)
  
;;    (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
;;    (global-set-key (kbd "<f2> u") 'counsel-unicode-char)
;;    (global-set-key (kbd "C-c g") 'counsel-git)
;;    (global-set-key (kbd "C-c j") 'counsel-git-grep)
;;    (global-set-key (kbd "C-c k") 'counsel-ag)
;;    (global-set-key (kbd "C-x l") 'counsel-locate)
;;    (global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
    ;;    (define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)
    (define-key read-expression-map (kbd "C-r") 'counsel-expression-history)
    ))

(use-package avy
  :ensure t
  :bind ("M-s" . avy-goto-char))

;(use-package auto-complete
;  :ensure t
;  :init
;  (progn
;    (ac-config-default)
;    (global-auto-complete-mode t)
;    ))



(use-package flycheck
  :ensure t
  :init
  (global-flycheck-mode t))

(use-package yasnippet
  :ensure t
  :init
  (yas-global-mode 1))

(use-package elpy
  :ensure t
  :config
  (elpy-enable))

;  (use-package undo-tree
;    :ensure t
;    :init
;    (global-undo-tree-mode))

(use-package beacon
:ensure t
:config
(beacon-mode 1)
(setq beacon-color "#666600")
  )

  (use-package hungry-delete
    :ensure t
    :config
    (global-hungry-delete-mode))

  (use-package expand-region
    :ensure t
    :config
    (global-set-key (kbd "C-=") 'er/expand-region))
