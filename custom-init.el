(cond
 ((string-equal system-type "windows-nt") ; Microsoft Windows
  (progn
    (require 'package)
    (let (rootpath)
      (setq rootpath
            (concat
             ;; (getenv "HOMESHARE")
	     "//ant.amazon.com/home/sea/004/markmans"
             "/Code/emacs-config/"
             ))
      (message rootpath)
      (load (concat rootpath "common-lisp.el"))
      (load (concat rootpath "vendor.el"))
      (load (concat rootpath "splash-screen.el"))
      (load (concat rootpath "package-defaults.el"))
      (load (concat rootpath "text-handling.el"))
      (load (concat rootpath "language-modes.el"))
      (load (concat rootpath "look-and-feel.el"))
      (load (concat rootpath "navigation.el"))
      )
    )
  ))

