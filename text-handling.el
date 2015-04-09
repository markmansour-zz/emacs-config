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
