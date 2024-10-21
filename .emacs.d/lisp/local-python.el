(provide 'local-python)


(use-package elpy
  :ensure t)
(elpy-enable)

(add-hook 'python-mode-hook 'pyvenv-mode)
(add-hook 'python-mode-hook 'elpy-mode)
(add-hook 'python-mode-hook 'display-fill-column-indicator-mode)
(add-hook 'python-mode-hook 'hs-minor-mode)
(add-hook 'python-mode-hook (lambda () (setq show-trailing-whitespace t)))

(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args
      "-i --simple-prompt";;  --InteractiveShell.display_page=True"
      lsp-pylsp-plugins-flake8-enabled nil
      lsp-pylsp-plugins-pydocstyle-enabled nil)

(define-key python-mode-map (kbd "C-c C-c")
            'elpy-shell-send-region-or-buffer)


;; (add-hook 'python-mode-hook
;; 	  (lambda ()  
;; 	    (setq-local company-backends
;; 			'((company- company-ispell :separate)
;; 			  company-files))))

;; (require 'quelpa-use-package)

