;; -*- mode: emacs-lisp -*-

(defun dotspacemacs/layers ()
  (setq-default
   dotspacemacs-distribution 'spacemacs
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   dotspacemacs-configuration-layer-path '()
   dotspacemacs-configuration-layers
   '((auto-completion
      :variables
      auto-completion-return-key-behavior        'complete
      auto-completion-tab-key-behavior           'cycle
      auto-completion-complete-with-key-sequence nil
      auto-completion-private-snippets-directory nil
      auto-completion-enable-help-tooltip        'manual
      auto-completion-enable-snippets-in-popup   t)
     better-defaults
     (c-c++ :variables c-c++-enable-clang-support t)
     emacs-lisp
     git
     html
     javascript
     markdown
     org
     python
     (semantic :disabled-for emacs-lisp)
     syntax-checking
     shell
     shell-scripts
     themes-megapack
     (version-control
      :variables
      version-control-diff-tool     'git-gutter
      version-control-global-margin t)
     vimscript
     yaml
     ;; Personal config layers
     sk-c)
   dotspacemacs-additional-packages
   '(flycheck-package
     helpful
     (i3wm-config-mode   :location (recipe :fetcher github
                                           :repo "alexander-miller/i3wm-config-mode"))
     (morning-star-theme :location (recipe :fetcher github
                                           :repo "alexander-miller/morning-star-theme"))
     rainbow-mode
     shackle
     swiper
     vimish-fold
     writeroom-mode)
   dotspacemacs-frozen-packages '()
   dotspacemacs-excluded-packages '(evil-org popwin vi-tilde-fringe hl-todo)
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  (setq-default
   dotspacemacs-elpa-https t
   dotspacemacs-elpa-timeout 10
   dotspacemacs-check-for-update t
   dotspacemacs-elpa-subdirectory nil
   dotspacemacs-editing-style 'hybrid
   dotspacemacs-verbose-loading nil
   dotspacemacs-startup-banner nil
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 5)
                                (bookmarks . 5))
   dotspacemacs-startup-buffer-responsive t
   dotspacemacs-scratch-mode 'org-mode
   dotspacemacs-themes '(morning-star
                         spacemacs-dark
                         spacemacs-light)
   dotspacemacs-colorize-cursor-according-to-state t
   dotspacemacs-default-font '("Menlo for Powerline"
                               :size 16
                               :weight normal
                               :width normal
                               :powerline-scale 1.2)
   dotspacemacs-leader-key "SPC"
   dotspacemacs-emacs-command-key "SPC"
   dotspacemacs-ex-command-key ":"
   dotspacemacs-emacs-leader-key "M-m"
   dotspacemacs-major-mode-leader-key ","
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   dotspacemacs-distinguish-gui-tab t
   dotspacemacs-remap-Y-to-y$ t
   dotspacemacs-retain-visual-state-on-shift t
   dotspacemacs-visual-line-move-text t
   dotspacemacs-ex-substitute-global nil
   dotspacemacs-default-layout-name "@std"
   dotspacemacs-display-default-layout t
   dotspacemacs-auto-resume-layouts nil
   dotspacemacs-large-file-size 1
   dotspacemacs-auto-save-file-location 'cache
   dotspacemacs-max-rollback-slots 5
   dotspacemacs-helm-resize nil
   dotspacemacs-helm-no-header nil
   dotspacemacs-helm-position 'bottom
   dotspacemacs-helm-use-fuzzy 'always
   dotspacemacs-enable-paste-transient-state nil
   dotspacemacs-which-key-delay 2.0
   dotspacemacs-which-key-position 'bottom
   dotspacemacs-loading-progress-bar nil
   dotspacemacs-fullscreen-at-startup nil
   dotspacemacs-fullscreen-use-non-native nil
   dotspacemacs-maximized-at-startup nil
   dotspacemacs-active-transparency 90
   dotspacemacs-inactive-transparency 90
   dotspacemacs-show-transient-state-title t
   dotspacemacs-show-transient-state-color-guide t
   dotspacemacs-mode-line-unicode-symbols t
   dotspacemacs-smooth-scrolling nil
   dotspacemacs-line-numbers nil
   dotspacemacs-folding-method 'evil
   dotspacemacs-smartparens-strict-mode nil
   ;; TODO add to anki: disable smart closing parenthesis by pressing `C-q' before `)'
   dotspacemacs-smart-closing-parenthesis t
   dotspacemacs-highlight-delimiters 'any
   dotspacemacs-persistent-server nil
   dotspacemacs-search-tools '("ag" "grep")
   dotspacemacs-default-package-repository nil
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  (setq custom-file (concat (getenv "SPACEMACSDIR") "/custom-file.el")))

(defun dotspacemacs/user-config ()
  (load-file (concat (getenv "SPACEMACSDIR") "/user-config.elc"))
)

(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
  )
