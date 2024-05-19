(provide 'local-sql)

(use-package sqlup-mode
  :ensure t)

(setq sqlind-basic-offset 4)
(add-hook 'sql-mode-hook 'sqlind-minor-mode)
(add-hook 'sql-mode-hook 'sqlup-mode)
(setq sql-ms-program "sqlcmd")

