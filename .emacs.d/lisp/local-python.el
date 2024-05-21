(provide 'local-python)

(use-package elpy
  :ensure t)
(use-package lsp
  :ensure t)

(elpy-enable)

(require 'lsp-mode)
(add-hook 'python-mode-hook #'lsp)
(add-hook 'python-mode-hook 'pyvenv-mode)
(add-hook 'python-mode-hook 'elpy-mode)

(setq python-shell-interpreter "python3.exe"
      python-shell-interpreter-args
      "-i --simple-prompt --InteractiveShell.display_page=True"
      lsp-pylsp-plugins-flake8-enabled nil
      lsp-pylsp-plugins-pydocstyle-enabled nil)

;; (add-hook 'python-mode-hook
;; 	  (lambda ()  
;; 	    (setq-local company-backends
;; 			'((company- company-ispell :separate)
;; 			  company-files))))

;; (require 'quelpa-use-package)

