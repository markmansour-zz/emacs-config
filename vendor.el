(defvar markmans/vendor-dir (expand-file-name "vendor" user-emacs-directory))
(add-to-list 'load-path markmans/vendor-dir)

(dolist (project (directory-files markmans/vendor-dir t "\\w+"))
  (when (file-directory-p project)
    (add-to-list 'load-path project)))
