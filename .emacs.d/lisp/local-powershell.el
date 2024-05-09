(provide 'local-powershell)
(add-to-list 'auto-mode-alist '("\\.ps1\\'" . powershell-mode))
(add-hook 'powershell-mode-hook (lambda () (setq show-trailing-whitespace t)))
