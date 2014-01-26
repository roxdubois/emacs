(setq inhibit-splash-screen t)

(server-start)

(add-to-list 'load-path "/usr/share/emacs/site-lisp/org" t)
;(load "~/.emacs.d/gnuserv")

(modify-frame-parameters nil '((wait-for-wm . nil)))

;(setq x-select-enable-clipboard t)
;(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)

;(autoload 'flyspell-mode "flyspell" "On-the-fly spelling checker." t)

;;(load "~/.emacs.d/ess-5.3.4/lisp/ess-site")

;(load "~/.emacs.d/csv-mode")

;(load "~/.emacs.d/ps-ccrypt")
;(require 'ps-ccrypt "ps-ccrypt.el")

;(load-library "longlines")

(setq default-major-mode 'text-mode)

;(autoload 'longlines-mode "longlines.el"
;   "Minor mode for editing long lines." t)

;(add-hook 'post-mode-hook 'flyspell-mode)

;(load "~/.emacs.d/post")

;(require 'printing)


;; The following lines are always needed.  Choose your own keys.
     (add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
     (global-set-key "\C-cl" 'org-store-link)
     (global-set-key "\C-ca" 'org-agenda)
     (global-set-key "\C-cb" 'org-iswitchb)



(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)

;(setq TeX-auto-save t)
;(setq TeX-parse-self t)
;(setq-default TeX-master nil)

(add-hook 'LaTeX-mode-hook 'flyspell-mode)

(global-visual-line-mode 1)
(setq TeX-PDF-mode t)

(defun unfill-region (begin end)
  "Remove all linebreaks in a region but leave paragraphs, 
  indented text (quotes,code) and lines starting with an asterix (lists) intakt."
  (interactive "r")
  (replace-regexp "\\([^\n]\\)\n\\([^ *\n]\\)" "\\1 \\2" nil begin end))

;(require 'org-export-latex)

(autoload 'no-word-find-file "~/.emacs.d/no-word" "open word document" t)

(setq erc-default-sound "~/.emacs.d/sounds/hello.wav")
(setq erc-play-command "aplay")

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(browse-url-mozilla-program "firefox")
 '(browse-url-netscape-program "firefox")
 '(case-fold-search nil)
 '(erc-auto-query (quote window))
 '(erc-modules (quote (autojoin button completion fill irccontrols match menu netsplit noncommands notify readonly replace ring smiley sound stamp spelling track)))
 '(erc-paranoid t)
 '(erc-prompt-for-password nil)
 '(erc-server "localhost")
 '(erc-sound-path (quote ("~/.emacs.d/sounds/")))
 '(org-agenda-files (quote ("~/Working Together/TODO_September.org")))
 '(org-icalendar-use-deadline (quote (event-if-not-todo event-if-todo todo-due)))
 '(org-mobile-directory "~/Desktop/Dropbox/")
 '(org-mobile-inbox-for-pull "~/org/from-mobile.org")
 '(save-place t nil (saveplace))
 '(show-paren-mode t)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify)))
(set-foreground-color "White")
(set-background-color "Black")

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "Black" :foreground "White" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "unknown" :family "DejaVu Sans Mono"))))
 '(cursor ((t (:background "#ffffff")))))
