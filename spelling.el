;; (add-to-list 'exec-path "C:/Program Files (x86)/hunspell-1.3.2-3-w32-bin/bin")
;; (setq ispell-program-name (locate-file "hunspell"
;;  				       exec-path exec-suffixes 'file-executable-p))
;; (setq ispell-extra-args '("-d en_US"))

      
;; (ispell-change-dictionary "american" t)	  ;; why is this not en_US?

;;(setq ispell-local-dictionary-alist '(
;; 			      ("american"
;; 			       "[[:alpha:]]"
;; 			       "[^[:alpha:]]"
;; 			       "[']"
;; 			       t
;; 			       ("-d" "en_US" "-p" "C:/Program Files (x86)/hunspell-1.3.2-3-w32-bin/share/personal.en")
;; 			       nil
;; 			       iso-8859-1)))


(add-to-list 'exec-path "C:/Program Files (x86)/hunspell-1.3.2-3-w32-bin/bin")
(setq ispell-program-name (locate-file "hunspell"
				       exec-path exec-suffixes 'file-executable-p))
;; just reset dictionary to the safe one "en_US" for hunspell.
;; if we need use different dictionary, we specify it in command line arguments
(setq ispell-local-dictionary "en_US")
(setq ispell-local-dictionary-alist
      '(("en_US" "[[:alpha:]]" "[^[:alpha:]]" "[']" nil nil nil utf-8)))

