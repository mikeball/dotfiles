;; "y or n" instead of "yes or no"
;(fset 'yes-or-no-p 'y-or-n-p)

;; Make sure all backup files only live in one place
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))


;; place standard items on path
(push "/usr/local/bin" exec-path)


;; (setq make-backup-files nil) ; stop creating those backup~ files
(setq auto-save-default nil) ; stop creating those #autosave# files


;; turn off the end of buffer bell sound, it's much too loud
(setq ring-bell-function 'ignore)