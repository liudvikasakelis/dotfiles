(provide 'local-shortcuts)

(setq visible-bell nil)
(global-set-key (kbd "C-<tab>") 'other-window)
(setq mouse-autoselect-window 't)

(bind-key* (kbd "C-x C-b") 'ibuffer)
(bind-key* (kbd "C-x C-a") 'mark-whole-buffer)





(add-hook 'js-json-mode-hook 'yafolding-mode)
