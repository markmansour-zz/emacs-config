;; MOVE THIS TO ~/.emacs.d/init.el
;;
;; pacakges are initialized AFTER the init.el is loaded.  Therefore, once the
;; init is finished, call the REAL config
(add-hook 'after-init-hook 
          (lambda () 
            (load "h:/Code/emacs-config/custom-init.el")))
