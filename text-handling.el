;; overwrite highlights
(delete-selection-mode t)
(transient-mark-mode t)

;; Use the system clipboard
(setq x-select-enable-clipboard t)

;; CTLR-C/V/X
(cua-mode)

;; no tabs please
(setq tab-width 2
      indent-tabs-mode nil)

;; let me just type y/n
(defalias 'yes-or-no-p 'y-or-n-p)

;; copy highlighted text to the clipboard
(setq mouse-drag-copy-region t)

;; this function will allow you to find characters your current coding system cannot encode
;; https://www.emacswiki.org/emacs/FindingNonAsciiCharacters
(defun find-next-unsafe-char (&optional coding-system)
  "Find the next character in the buffer that cannot be encoded by
coding-system. If coding-system is unspecified, default to the coding
system that would be used to save this buffer. With prefix argument,
prompt the user for a coding system."
  (interactive "Zcoding-system: ")
  (if (stringp coding-system) (setq coding-system (intern coding-system)))
  (if coding-system nil
    (setq coding-system
	  (or save-buffer-coding-system buffer-file-coding-system)))
  (let ((found nil) (char nil) (csets nil) (safe nil))
    (setq safe (coding-system-get coding-system 'safe-chars))
    ;; some systems merely specify the charsets as ones they can encode:
    (setq csets (coding-system-get coding-system 'safe-charsets))
    (save-excursion
      ;;(message "zoom to <")
      (let ((end  (point-max))
	    (here (point    ))
	    (char  nil))
	(while (and (< here end) (not found))
	  (setq char (char-after here))
	  (if (or (eq safe t)
		  (< char ?\177)
		  (and safe  (aref safe char))
		  (and csets (memq (char-charset char) csets)))
	      nil ;; safe char, noop
	    (setq found (cons here char)))
	  (setq here (1+ here))) ))
    (and found (goto-char (1+ (car found))))
    found))


;;; https://www.emacswiki.org/emacs/UnfillParagraphcon
;;; Stefan Monnier <foo at acm.org>. It is the opposite of fill-paragraph
(defun unfill-paragraph (&optional region)
  "Takes a multi-line paragraph and makes it into a single line of text."
  (interactive (progn (barf-if-buffer-read-only) '(t)))
  (let ((fill-column (point-max))
	;; This would override `fill-column' if it's an integer.
	(emacs-lisp-docstring-fill-column t))
    (fill-paragraph nil region)))
