(add-to-list 'load-path "~/.emacs.d/mhb")
(load "global")
(load "interface")
(load "bindings")


(add-to-list 'load-path "~/.emacs.d/vendor")
(require 'paredit)
(show-paren-mode t) ; got to see matching parens


;; slime - required for clojure-test-mode
(add-to-list 'load-path "~/.emacs.d/vendor/slime")
(require 'slime)
(eval-after-load 'slime '(setq slime-protocol-version 'ignore))
  (slime-setup '(slime-repl))


;; clojure mode
(add-to-list 'load-path "~/.emacs.d/vendor/clojure-mode")
(require 'clojure-mode)
(require 'clojure-test-mode)
(defun turn-on-paredit () (paredit-mode 1))
(add-hook 'clojure-mode-hook 'turn-on-paredit) ;; turn on paredit for clojure



;; clojure nrepl
(add-to-list 'load-path "~/.emacs.d/vendor/nrepl.el")
(require 'nrepl)
(add-hook 'nrepl-interaction-mode-hook
	  'nrepl-turn-on-eldoc-mode)
(setq nrepl-popup-stacktraces nil) ;; disable exception buffer popup?? not working
(add-to-list 'same-window-buffer-names "*nrepl*")


;; (add-hook 'slime-repl-mode-hook
;;           (defun clojure-mode-slime-font-lock ()
;;             (require 'clojure-mode)
;;             (let (font-lock-mode)
;;               (clojure-mode-font-lock-setup))))






;; enable cljs sytax highlighting
(setq auto-mode-alist (cons '("\\.cljs" . clojure-mode) auto-mode-alist))

;; easy startup of cljs repl
(defun clojurescript-repl ()
 (interactive)
 (run-lisp "lein trampoline cljsbuild repl-listen"))



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




;; Enable a backtrace when problems occur
;; (setq debug-on-error t)





