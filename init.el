;; font
(set-face-attribute 'default nil :height 110)
(set-face-attribute 'default nil :family "Liberation Mono")
;; (set-face-attribute 'default nil :family "DejaVu Sans Mono")

;; cursor - bar instead of a block
(setq default-cursor-type '(bar . 2))

;; window title - include file's full path
(setq frame-title-format
      '("" invocation-name " - "
        (:eval (if (buffer-file-name)
                   (abbreviate-file-name (buffer-file-name))
                 "%b"))))

;; kill whole line
(setq kill-whole-line t)

;; turn off newline on save
(setq require-final-newline nil)

;; enable stuff
(put 'upcase-region 'disabled nil)

;; zoning - turn off
(setq live-disable-zone t)

;; customize config file location
(setq custom-file (concat (live-pack-config-dir) "custom-configuration.el"))

;; rainbow delimiters
;; colors
(setq rainbow-delimiters-max-face-count 7)
(set-face-foreground 'rainbow-delimiters-depth-1-face "#f00")
(set-face-foreground 'rainbow-delimiters-depth-2-face "#0d0")
(set-face-foreground 'rainbow-delimiters-depth-3-face "#39f")
(set-face-foreground 'rainbow-delimiters-depth-4-face "#cc3")
(set-face-foreground 'rainbow-delimiters-depth-5-face "#c0c")
(set-face-foreground 'rainbow-delimiters-depth-6-face "#0cc")
(set-face-foreground 'rainbow-delimiters-depth-7-face "#f90")
;; turn on in nrepl
(add-hook 'nrepl-mode-hook 'rainbow-delimiters-mode)

;; vcs - disable on windows as too slow
(when (eq system-type 'windows-nt)
  (setq vc-handled-backends ())
  (global-git-gutter-mode 0))

;; js2-mode
(set-face-foreground 'js2-function-param "#0c0")

;; nrepl tweaks
;; (setq nrepl-popup-stacktraces-in-repl t)
;; default: (setq nrepl-popup-stacktraces-in-repl nil)

;; yas - my snippets
(require 'yasnippet)
(setq matts-snippet-dir (concat live-current-pack-dir "etc/snippets"))
(setq yas-snippet-dirs `(,matts-snippet-dir ,live-yasnippet-dir))
(yas-reload-all)

;; dired & popwin
(push '(dired-mode :position left) popwin:special-display-config)

;; dired details
(live-add-pack-lib "dired-details")
(require 'dired-details)
(dired-details-install)

;; magit - ignore space in diff
(setq magit-diff-options (quote ("--ignore-space-change")))

;; auto mode
(add-to-list 'auto-mode-alist '("\\.\\(jspf?\\|tag\\)$" . html-mode))

;; load bindings config
(live-load-config-file "bindings.el")
