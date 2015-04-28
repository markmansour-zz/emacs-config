(load "package")
(package-initialize)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

(setq package-archive-enable-alist '(("melpa" deft magit)))

(defvar markmans/packages '(color-theme
			    color-theme-cobalt
			    magit
			    markdown-mode
			    marmalade
			    solarized-theme
			    web-mode
			    writegood-mode
			    edit-server
			    yaml-mode)
  "Default packages")

(defun markmans/packages-installed-p ()
  (loop for pkg in markmans/packages
        when (not (package-installed-p pkg)) do (return nil)
        finally (return t)))

(unless (markmans/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg markmans/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))
