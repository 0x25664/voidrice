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

(setq-default indent-tabs-mode t)
(setq-default tab-width 2)

;; (setq doom-theme 'doom-solarized-dark)
(setq doom-theme 'doom-peacock)
(setq doom-font (font-spec :family "Jetbrains Mono" :size 18))
(setq doom-unicode-font (font-spec :family "Jetbrains Mono" :size 18))

(setq fancy-splash-image "~/.doom.d/banner.png")
