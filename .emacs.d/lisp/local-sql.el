(provide 'local-sql)
(setq sqlind-basic-offset 4)
(add-hook 'sql-mode-hook 'sqlind-minor-mode)
(add-hook 'sql-mode-hook 'sqlup-mode)
(setq sql-ms-program "sqlcmd")