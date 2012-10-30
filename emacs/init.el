(add-to-list 'load-path "~/.emacs.d/mhb")
(load "global")
(load "interface")
(load "bindings")


(add-to-list 'load-path "~/.emacs.d/vendor")


(require 'paredit)
(show-paren-mode t) ;; need to see matching parens!



;; clojure
(require 'clojure-mode)
;; (require 'clojure-test-mode) does not work...
(defun turn-on-paredit () (paredit-mode 1))
(add-hook 'clojure-mode-hook 'turn-on-paredit) ;; turn on paredit for clojure


;; clojure nrepl
(require 'nrepl)
(add-hook 'nrepl-interaction-mode-hook
	  'nrepl-turn-on-eldoc-mode)
(setq nrepl-popup-stacktraces nil) ;; disable exception buffer popup?? not working...
(add-to-list 'same-window-buffer-names "*nrepl*")


;; enable cljs sytax highlighting
(setq auto-mode-alist (cons '("\\.cljs" . clojure-mode) auto-mode-alist))

;; easy startup of cljs repl
(defun clojurescript-repl ()
 (interactive)
 (run-lisp "lein trampoline cljsbuild repl-listen"))



;; Enable a backtrace when problems occur
;; (setq debug-on-error t)





