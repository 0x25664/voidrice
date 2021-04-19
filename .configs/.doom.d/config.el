(setq confirm-kill-emacs nil)
(setq-default mode-line-format nil)
(setq compilation-scroll-output t)

(setq-default message-log-max nil)
(kill-buffer "*Messages*")

;; DASHBOARD
(remove-hook '+doom-dashboard-functions #'doom-dashboard-widget-shortmenu)
(add-hook! '+doom-dashboard-functions (hl-line-mode -1))
(setq-hook! '+doom-dashboard-mode-hook evil-normal-state-cursor (list nil))

;; THEMES
(setq doom-theme 'doom-one)
;; (setq doom-font (font-spec :family "jetbrains mono" :weight 'light))
;; (setq fancy-splash-image "~/.doom.d/banner.png")

;; RUN OR COMPILE
(defun rubyCompile ()
    (interactive)
    (compile (concat "ruby " (buffer-name))))

(defun pythonCompile ()
    (interactive)
    (compile (concat "python3 " (buffer-name))))

(defun javaCompile ()
    (interactive)
    (compile (concat "java " (buffer-name))))

;; KB
(add-hook 'ruby-mode-hook
    (lambda ()
	(local-set-key (kbd "<f5>") #'rubyCompile)))

(add-hook 'python-mode-hook
    (lambda ()
	(local-set-key (kbd "<f5>") #'pythonCompile)))

(add-hook 'java-mode-hook
    (lambda ()
	(local-set-key (kbd "<f5>") #'javaCompile)))
