;; Place your bindings here.

;; For example:
;;(define-key global-map (kbd "C-+") 'text-scale-increase)
;;(define-key global-map (kbd "C--") 'text-scale-decrease)

;; Move paredit sexp bracket slurp/barf commands from ctrl to alt key
(define-key paredit-mode-map (kbd "C-<right>") nil)
(define-key paredit-mode-map (kbd "C-<left>") nil)
(define-key paredit-mode-map (kbd "M-<right>") 'paredit-forward-slurp-sexp)
(define-key paredit-mode-map (kbd "M-<left>") 'paredit-forward-barf-sexp)

;; Window & Buffer switching with menu key
(define-key global-map (kbd "S-<menu>") 'previous-buffer)
(define-key global-map (kbd "<menu>")   'next-buffer)
(define-key global-map (kbd "C-<menu>") 'win-switch-dispatch)

;; Undo tree
(define-key global-map (kbd "C-, u") 'undo-tree-visualize)

;; HideShow mode - code folding
(add-hook 'prog-mode-hook #'hs-minor-mode)
