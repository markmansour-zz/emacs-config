;; https://lists.gnu.org/archive/html/emacs-devel/2012-05/msg00269.html
;; exec-path is important for Magit, setenv is used by eshell
(if (eq system-type 'windows-nt)
    (progn
      (setq exec-path (add-to-list 'exec-path "C:/Program Files (x86)/Git/bin"))
      (setenv "PATH" (concat "C:\\Program Files (x86)\\Git\\bin;" (getenv "PATH")))))

;; https://github.com/magit/magit/issues/255#issuecomment-23834638
(setenv "GIT_ASKPASS" "git-gui--askpass")
