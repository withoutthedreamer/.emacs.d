;; load my emacs config
(add-hook 'after-init-hook
          `(lambda ()
             (setq my-emacs-config-dir
                   ,(file-name-directory (or load-file-name (buffer-file-name))))
             (require 'org)
             (org-babel-load-file (expand-file-name "emacs-config.org" my-emacs-config-dir))))
