;; text scaling
(define-key global-map (kbd "<C-mouse-4>") (lambda () (interactive) (text-scale-increase 0.5)))
(define-key global-map (kbd "<C-mouse-5>") (lambda () (interactive) (text-scale-decrease 0.5)))

;; kill buffer - without confirmation
(define-key global-map (kbd "C-x k") 'kill-this-buffer)

;; window & buffer switching
(define-key global-map (kbd "S-<menu>") 'previous-buffer)
(define-key global-map (kbd "<menu>")   'next-buffer)
(define-key global-map (kbd "C-<menu>") 'win-switch-dispatch)

;; window resizing
(define-key global-map (kbd "C--") (lambda () (interactive) (shrink-window-horizontally 5)))
(define-key global-map (kbd "C-=") (lambda () (interactive) (enlarge-window-horizontally 5)))

;; window creation/deletion
(define-key window-number-meta-mode-map (kbd "M-1") nil) ;; unbind M-1's current usage
(define-key window-number-meta-mode-map (kbd "M-2") nil) ;; unbind M-2's current usage
(define-key window-number-meta-mode-map (kbd "M-3") nil) ;; unbind M-3's current usage
(define-key window-number-meta-mode-map (kbd "M-0") nil) ;; unbind M-0's current usage
(define-key global-map (kbd "M-1") 'delete-other-windows)
(define-key global-map (kbd "M-2") 'split-window-vertically)
(define-key global-map (kbd "M-3") 'split-window-horizontally)
(define-key global-map (kbd "M-0") 'delete-window)

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
(define-key global-map (kbd "C-, C-d") 'dired-jump-other-window)
(define-key dired-mode-map (kbd "M-<up>") 'dired-prev-subdir)
(define-key dired-mode-map (kbd "M-<down>") 'dired-next-subdir)
(define-key dired-mode-map (kbd "M-<left>") 'dired-hide-all)
(define-key dired-mode-map (kbd "M-<right>") 'dired-hide-subdir)
(define-key dired-mode-map (kbd "C-k") 'dired-kill-subdir)
(define-key dired-mode-map (kbd "M-k") 'dired-kill-tree)
(define-key dired-mode-map (kbd "RET") 'dired-find-file-other-window)

;; js2
(define-key js2-mode-map (kbd "C-, C-e") 'js2-next-error)

;; make q kill some buffers
(define-key dired-mode-map (kbd "q") 'kill-this-buffer)
(define-key help-mode-map (kbd "q") 'kill-this-buffer)
(define-key magit-mode-map (kbd "q") 'kill-this-buffer)
(define-key completion-list-mode-map (kbd "q") 'kill-this-buffer)
(define-key grep-mode-map (kbd "q") 'kill-this-buffer)
(define-key ibuffer-mode-map (kbd "q") 'kill-this-buffer)
