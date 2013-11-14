;; text scaling
;; (define-key global-map (kbd "C-+") 'text-scale-increase)
;; (define-key global-map (kbd "C--") 'text-scale-decrease)

;; kill buffer - without confirmation
(define-key global-map (kbd "C-x k") 'kill-this-buffer)

;; window & buffer switching
(define-key global-map (kbd "S-<menu>") 'previous-buffer)
(define-key global-map (kbd "<menu>")   'next-buffer)
(define-key global-map (kbd "C-<menu>") 'win-switch-dispatch)

;; undo tree
(define-key global-map (kbd "C-, u") 'undo-tree-visualize)

;; paredit - move sexp slurp/barf commands from ctrl to alt key
(define-key paredit-mode-map (kbd "C-<right>") nil)
(define-key paredit-mode-map (kbd "C-<left>") nil)
(define-key paredit-mode-map (kbd "M-<right>") 'paredit-forward-slurp-sexp)
(define-key paredit-mode-map (kbd "M-<left>") 'paredit-forward-barf-sexp)

;; hide show - code folding
(add-hook 'prog-mode-hook #'hs-minor-mode)

;; dired
(define-key dired-mode-map (kbd "M-<up>") 'dired-prev-subdir)
(define-key dired-mode-map (kbd "M-<down>") 'dired-next-subdir)
(define-key dired-mode-map (kbd "M-<left>") 'dired-hide-all)
(define-key dired-mode-map (kbd "M-<right>") 'dired-hide-subdir)
(define-key dired-mode-map (kbd "C-k") 'dired-kill-subdir)
(define-key dired-mode-map (kbd "M-k") 'dired-kill-tree)
(define-key dired-mode-map (kbd "RET") 'dired-find-file-other-window)

;; make q kill some buffers
(define-key dired-mode-map (kbd "q") 'kill-this-buffer)
(define-key help-mode-map (kbd "q") 'kill-this-buffer)
(define-key magit-mode-map (kbd "q") 'kill-this-buffer)
