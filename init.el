;; font
(set-face-font 'default
               (if (eq system-type 'windows-nt)
                   "Consolas-11"
                   ;; "Liberation Mono-12"
                   "DejaVu Sans Mono-11"))

;; font tweaks
;; (set-face-attribute 'default nil :height 105)
;; (set-face-attribute 'default nil :font "Liberation Mono")
;; (x-list-fonts "*")

;; cursor - bar instead of a block
(setq default-cursor-type '(bar . 2))

;; window title - include file's full path
(setq frame-title-format
      '("" invocation-name " - "
        (:eval (if (buffer-file-name)
                   (abbreviate-file-name (buffer-file-name))
                 "%b"))))

;; turn zoning off
(setq live-disable-zone t)

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

;; disable VCS things - too slow on windows
(when (eq system-type 'windows-nt)
  (setq vc-handled-backends ())
  (global-git-gutter-mode 0))

;; js2-mode
(set-face-foreground 'js2-function-param "#0c0")

;; kill whole line
(setq kill-whole-line t)

;; nrepl tweaks
;; (setq nrepl-popup-stacktraces-in-repl t)
;; default: (setq nrepl-popup-stacktraces-in-repl nil)

;; load bindings config
(live-load-config-file "bindings.el")

;; add my yas snippets
(require 'yasnippet)
(setq matts-snippet-dir (concat live-current-pack-dir "etc/snippets"))
(setq yas-snippet-dirs `(,matts-snippet-dir ,live-yasnippet-dir))
(yas-reload-all)

;; turn off newline on save
(setq require-final-newline nil)

;; ignore space in magit diff
(setq magit-diff-options (quote ("--ignore-space-change")))

;; enable stuff
(put 'upcase-region 'disabled nil)
