(add-to-list 'exec-path "C:/Program Files (x86)/hunspell-1.3.2-3-w32-bin/bin")
(setq ispell-program-name (locate-file "hunspell.exe"
         exec-path exec-suffixes 'file-executable-p))

;; (ispell-change-dictionary "american" t)   ;; why is this not en_US?

(setq ispell-local-dictionary-alist '(
				      ("american"
				       "[[:alpha:]]"
				       "[^[:alpha:]]"
				       "[']"
				       t
				       ("-d" "en_US" "-p" "C:/Program Files (x86)/hunspell-1.3.2-3-w32-bin/share/personal.en")
				       nil
				       iso-8859-1)))

