(provide 'local-trailing-whitespace)

(add-hook 'term-mode-hook (lambda () (setq show-trailing-whitespace nil)))
(add-hook 'inferior-ess-r-mode-hook (lambda () (setq show-trailing-whitespace nil)))
(add-hook 'inferior-python-mode-hook (lambda () (setq show-trailing-whitespace nil)))
(add-hook 'geiser-repl-mode-hook (lambda () (setq show-trailing-whitespace nil)))
