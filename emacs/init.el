(add-to-list 'load-path "~/.emacs.d/mhb")

(load "global")
(load "interface")
(load "bindings")





; setup package manager
(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

; (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)



(defvar my-packages '(paredit
                      clojure-mode
                      ; clojure-test-mode
                      cider))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))





; show matching parens!
(show-paren-mode t) 

; turn on paredit for clojure
(add-hook 'clojure-mode-hook 'paredit-mode)









;; clojure-mode
; (unless (package-installed-p 'clojure-mode)
;   (package-install 'clojure-mode))

; (add-hook 'clojure-mode-hook 'paredit-mode)

;; previous method of enabling paredit in clojure-mode
; (require 'clojure-mode)

; (defun enable-paredit () (paredit-mode 1)) ; paredit with bracket highlighting?
; (add-hook 'clojure-mode-hook 'enable-paredit) 


;; never could get test-mode working...
; (require 'clojure-test-mode)



;; install cider
; (unless (package-installed-p 'cider)
;   (package-install 'cider))





;; clojure nrepl
; (require 'nrepl)
; (add-hook 'nrepl-interaction-mode-hook
;     'nrepl-turn-on-eldoc-mode)
;     ;; (setq nrepl-popup-stacktraces nil) ;; disable exception buffer popup?? not working...
;     (add-to-list 'same-window-buffer-names "*nrepl*")





;; enable cljs sytax highlighting
;; (setq auto-mode-alist (cons '("\\.cljs" . clojure-mode) auto-mode-alist)) 

;; easy startup of cljs repl
;; (defun clojurescript-repl ()
;;  (interactive)
;;  (run-lisp "lein trampoline cljsbuild repl-listen"))



;; Enable a backtrace when problems occur
;; (setq debug-on-error t)





