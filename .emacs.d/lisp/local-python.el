(provide 'local-python)

(use-package elpy
  :ensure t)
(use-package lsp-mode
  :ensure t)

(elpy-enable)

;; elpy setup will fail unless python3-virtualenv is installed;
;; rerun setup with command below
;; (elpy-rpc-reinstall-virtualenv)

;; (require 'lsp-mode)
;; (add-hook 'python-mode-hook #'lsp)
(add-hook 'python-mode-hook 'pyvenv-mode)
(add-hook 'python-mode-hook 'elpy-mode)
(add-hook 'python-mode-hook 'display-fill-column-indicator-mode)
(add-hook 'python-mode-hook (lambda () (setq show-trailing-whitespace t)))

(setq python-shell-interpreter "python3"
      python-shell-interpreter-args
      ""
      ;; "-i --simple-prompt"
      lsp-pylsp-plugins-flake8-enabled nil
      lsp-pylsp-plugins-pydocstyle-enabled nil)

;; (add-hook 'python-mode-hook
;; 	  (lambda ()
;; 	    (setq-local company-backends
;; 			'((company- company-ispell :separate)
;; 			  company-files))))

;; (require 'quelpa-use-package)

;; autoload python virtual environments
;; https://github.com/jorgenschaefer/pyvenv/issues/51#issuecomment-474785730
(defun pyvenv-autoload ()
  "Activates pyvenv version if .venv directory exists."
  (f-traverse-upwards
   (lambda (path)
     (let ((venv-path (f-expand "venv" path)))
       (if (f-exists? venv-path)
           (progn
             (pyvenv-workon venv-path))
         t)))))

(add-hook 'python-mode-hook 'pyvenv-autoload)

(require 'align)
(add-to-list 'align-rules-list
             '(python-dict-literal
               (regexp . "\\(\\s-*\\):\\(\\s-*\\)")
               (group  . (1 2))
               (modes  . '(python-mode))))
