(provide 'local-shortcuts)

(setq visible-bell nil)
(bind-key* (kbd "C-<right>") 'next-buffer)
(bind-key* (kbd "C-<left>") 'previous-buffer)
(global-set-key (kbd "C-<tab>") 'other-window)
(setq mouse-autoselect-window 't)
(bind-key* (kbd "C-M-j") "<br>") ; lol 

(bind-key* (kbd "C-x C-b") 'ibuffer)
