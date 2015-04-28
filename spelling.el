(add-to-list 'exec-path "C:/Program Files (x86)/hunspell-1.3.2-3-w32-bin/bin")
(setq ispell-program-name (locate-file "hunspell"
         exec-path exec-suffixes 'file-executable-p))

(ispell-change-dictionary "american" t)   ;; why is this not en_US?
