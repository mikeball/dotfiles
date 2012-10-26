; startup position
(setq initial-frame-alist '((top . 0) (left . 500)))

;; startup size
(add-to-list 'default-frame-alist '(height . 55))
(add-to-list 'default-frame-alist '(width . 105))


; hide the toolbars
(tool-bar-mode 0)


; hide splash screen
(setq inhibit-startup-message t)

; short scratch buffer message
(setq initial-scratch-message ";; scratch \n\n")

;; hide minibuffer spash message
;; for some reason these items are don't work
;; (setq inhibit-startup-echo-area-message t) 
;; (setq inhibit-startup-echo-area-message (user-login-name))
;; (setq inhibit-startup-echo-area-message "hi mike!")
;; (message "welcome mike") ;; displays quotes, why?


(set-default-font "Source Code Pro-15")

;; turn off block cursor
(setq-default cursor-type 'bar)


; delete seleted text when typing
(delete-selection-mode 1) 


;; turn on highlighting current line
;; (global-hl-line-mode 1)
;; need to set color so something less prominent


;; show line numbers
;; (global-linum-mode 0) ;; 0=off 1=on


;; show line,column 
(column-number-mode 1)

;; remove unsightly wrap arrows
(global-visual-line-mode 1) ; 1 for on, 0 for off.


;; (load-theme 'tango)


;;(custom-set-faces
;;  '(modeline ((t (:size "12pt" :background "grey"))) t))


;; scale down the mode line
(custom-set-faces
  '(modeline ((t (:height 120 :family "Menlo" :foreground "grey20" :background "grey80"))) t))




;; make the parenthesis less prominent in lisp source code
(defface esk-paren-face
   '((((class color) (background dark))
      (:foreground "grey60"))
     (((class color) (background light))
      (:foreground "grey65")))
   "Face used to dim parentheses."
   :group 'starter-kit-faces)

(font-lock-add-keywords 'emacs-lisp-mode
                        '(("(\\|)" . 'esk-paren-face)))

(font-lock-add-keywords 'clojure-mode
                        '(("(\\|)" . 'esk-paren-face)))


 
