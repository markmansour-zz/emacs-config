(cond
 ((string-equal system-type "windows-nt") ; Microsoft Windows
  (progn
    (let (rootpath)
      (setq rootpath
            (concat
             (getenv "HOMESHARE")
             "/Code/emacs-config/"
             ))
      (message rootpath)
      (load (concat rootpath "disable-ergoemacs.el"))
      (load (concat rootpath "look-and-feel.el"))
      (load (concat rootpath "magit-config.el"))
      )
    )
  ))

