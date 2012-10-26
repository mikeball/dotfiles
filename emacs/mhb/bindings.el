
; map the window manipulation keys for fewer keypresses
(global-set-key (kbd "M-2") 'split-window-vertically) ; was digit-argument
(global-set-key (kbd "M-3") 'split-window-horizontally) ; was digit-argument

; To help Unlearn C-x 2, 3
(global-unset-key (kbd "C-x 2")) ; was split-window-vertically
(global-unset-key (kbd "C-x 3")) ; was split-window-horizontally


; easily change font size in buffer
(define-key global-map (kbd "s-=") 'text-scale-increase)
(define-key global-map (kbd "s--") 'text-scale-decrease)
(setq text-scale-mode-step 1.1) ;; tone down font step size a bit



; kill the open file popup dialog
(define-key global-map (kbd "s-o") 'find-file)

; easier alt-x
(global-set-key "\C-x\C-m" 'execute-extended-command)

; delete entire words
(global-set-key "\C-w" 'backward-kill-word)

;; single letter yes/no answers
(defalias 'yes-or-no-p 'y-or-n-p)





;; intelligent buffer cycling *****
(defun emacs-buffer-p (name)
  (string-match-p "\\*.*\\*" name))

(defun next-non-emacs-buffer (&optional original)
  "Similar to next-buffer, but ignores emacs buffer such as *scratch*, *messages* etc."
  (interactive)
  (let ((tmp-orig (or original (buffer-name))))
    (next-buffer)
    (if (and
         (not (eq (buffer-name) tmp-orig))
         (emacs-buffer-p (buffer-name)))
        (next-non-emacs-buffer tmp-orig))))

;; (defun previous-non-emacs-buffer (&optional original)
;;   "Similar to previous-buffer, but ignores emacs buffer such as *scratch*, *messages* etc."
;;   (interactive)
;;   (let ((tmp-orig (or original (buffer-name))))
;;     (previous-buffer)
;;     (if (and
;;          (not (eq (buffer-name) tmp-orig))
;;          (emacs-buffer-p (buffer-name)))
;;         (previous-non-emacs-buffer tmp-orig))))


; easily cycle buffers
;; (define-key global-map (kbd "<C-tab>") 'next-buffer)
(define-key global-map (kbd "<C-tab>") 'next-non-emacs-buffer)
