;; (require 'exwm)
;; (require 'exwm-config)
;; (exwm-config-default)

;; (setq exwm-input-global-keys '(([?\s-&] . (lambda (command)
;;                                         (interactive (list (read-shell-command "$ ")))
;;                                         (start-process-shell-command command nil command)))

;;                                 ([?\s-v] . evil-window-vsplit)
;;                                 ([?\s-z] . evil-window-split)

;;                                 ([?\s-b] . ibuffer)
;;                                 ([?\s-B] . kill-current-buffer)

;;                                 ([?\s-h] . evil-window-left)
;;                                 ([?\s-j] . evil-window-next)
;;                                 ([?\s-k] . evil-window-prev)
;;                                 ([?\s-l] . evil-window-right)

;;                                 ([?\s-H] . evil-window-move-far-left)
;;                                 ([?\s-J] . evil-window-move-very-bottom)
;;                                 ([?\s-K] . evil-window-move-very-top)
;;                                 ([?\s-L] . evil-window-move-far-right)))
;;

(setq confirm-kill-emacs nil)
(setq-default mode-line-format nil)
(setq compilation-scroll-output t)

(setq-default indent-tabs-mode t)

;; (setq doom-theme 'doom-dracula)
;; (setq doom-theme 'doom-gruvbox-light)
(setq doom-theme 'doom-dark+)
;; (setq doom-theme 'doom-solarized-dark)

;; (setq doom-font (font-spec :family "mononoki" :size 18))
(setq doom-font (font-spec :family "jetbrains mono" :size 18))
;; (setq doom-font (font-spec :family "fira code" :size 15))

(setq fancy-splash-image "~/.doom.d/banner.png")

(defun rubyCompile ()
    (interactive)
    (compile (concat "ruby " (buffer-name))))

(defun pythonCompile ()
    (interactive)
    (compile (concat "python3 " (buffer-name))))

(defun javaCompile ()
    (interactive)
    (compile (concat "java " (buffer-name))))

(defun cppCompile ()
    (interactive)
	(set (make-local-variable 'compile-command)
	    (let ((file (file-name-nondirectory buffer-file-name)))
		(format "%s -o %s %s"
		    (if  (equal (file-name-extension file) "cpp") "g++" "gcc" )
		    (file-name-sans-extension file)
		    file)))
	(compile compile-command))

(global-set-key [f6] 'cppCompile)

(add-hook 'ruby-mode-hook
    (lambda ()
	(local-set-key (kbd "<f5>") #'rubyCompile)))

(add-hook 'python-mode-hook
    (lambda ()
	(local-set-key (kbd "<f5>") #'pythonCompile)))

(add-hook 'java-mode-hook
    (lambda ()
	(local-set-key (kbd "<f5>") #'javaCompile)))
