(setq user-full-name "Ayush Mudunuru"
      user-mail-address "ayush.mudunuru@gmail.com")

(setq doom-font (font-spec :family "Source Code Pro" :size 20 :weight 'Semi-Bold)
      doom-variable-pitch-font (font-spec :family "Source Code Pro" :size 20 :weight 'Semi-Bold))

(setq doom-theme 'doom-gruvbox)
(require 'erc-dcc)
(setq org-directory "~/Programs/Org/")

(use-package org
  :config
  (setq  org-ellipsis " ▾"
        org-hide-emphasis-markers t))

(setq display-line-numbers-type t)

(setq browse-url-browser-function 'eww-browse-url)
(mu4e t)
;; (use-package mu4e
  ;; :load-path "/usr/share/emacs/site-lisp/mu4e/"

  ;; :config

 ;; This is set to 't' to avoid mail syncing issues when using mbsync
;;   (setq mu4e-change-filenames-when-moving t)

;;   ;; Refresh mail using isync every 10 minutes
;;   (setq mu4e-update-interval (* 10 60))
;;   (setq mu4e-get-mail-command "mbsync -a")
;;   (setq mu4e-root-maildir "/Mail")

;;   (setq mu4e-drafts-folder "/[Gmail]/Drafts")
;;   (setq mu4e-sent-folder   "/[Gmail]/Sent Mail")
;;   (setq mu4e-refile-folder "/[Gmail]/All Mail")
;;   (setq mu4e-trash-folder  "/[Gmail]/Trash")
;;   (setq mu4e-maildir-shortcuts
;;     '((:maildir "/Inbox"    :key ?i)
;;       (:maildir "/[Gmail]/Sent Mail" :key ?s)
;;       (:maildir "/[Gmail]/Trash"     :key ?t)
;;       (:maildir "/[Gmail]/Drafts"    :key ?d)
;;       (:maildir "/[Gmail]/All Mail"  :key ?a)))
;;   (mu4e t))
;; (setq smtpmail-smtp-server "smtp.gmail.com"
;;       smtpmail-smtp-service 465
;;       smtpmail-stream-type  'ssl)
;; ;; Configure the function to use for sending mail
;; (setq message-send-mail-function 'smtpmail-send-it)
;; ;; Make sure plain text mails flow correctly for recipients
;; (setq mu4e-compose-format-flowed t)
;; (add-hook 'message-send-hook 'mml-secure-message-sign-pgpmime)
;; (setq mml-secure-smime-sign-with-sender "ayush.mudunuru@gmail.com")
;; (setq mu4e-compose-signature "Ayush M")
(use-package mu4e
  :ensure nil
  ;; :load-path "/usr/share/emacs/site-lisp/mu4e/"
  :defer 20 ; Wait until 20 seconds after startup
  :config

  ;; This is set to 't' to avoid mail syncing issues when using mbsync
  (setq mu4e-change-filenames-when-moving t)

  ;; Refresh mail using isync every 10 minutes
  (setq mu4e-update-interval (* 10 60))
  (setq mu4e-get-mail-command "mbsync -a")
  (setq mu4e-root-maildir "~/Mail")

  (setq mu4e-drafts-folder "/[Gmail]/Drafts")
  (setq mu4e-sent-folder   "/[Gmail]/Sent Mail")
  (setq mu4e-refile-folder "/[Gmail]/All Mail")
  (setq mu4e-trash-folder  "/[Gmail]/Trash")
(setq mu4e-maildir-shortcuts
    '((:maildir "/Inbox"    :key ?i)
      (:maildir "/[Gmail]/Sent Mail" :key ?s)
      (:maildir "/[Gmail]/Trash"     :key ?t)
      (:maildir "/[Gmail]/Drafts"    :key ?d)
      (:maildir "/[Gmail]/All Mail"  :key ?a))))
(setq smtpmail-smtp-server "smtp.gmail.com"
      smtpmail-smtp-service 465
      smtpmail-stream-type  'ssl)
;; Make sure plain text mails flow correctly for recipients
(setq mu4e-compose-format-flowed t)
(setq mu4e-compose-signature "Ayush M")
(use-package org-mime
  :ensure t)
(add-hook 'message-send-hook 'org-mime-confirm-when-no-multipart)
;; (mu4e-alert-set-default-style 'libnotify)
;; (add-hook 'after-init-hook #'mu4e-alert-enable-notifications)
;; (add-hook 'after-init-hook #'mu4e-alert-enable-mode-line-display)

(if (daemonp)
    (message "Loading in the daemon!")
    (message "Loading in regular Emacs!"))
(setq doom-modeline-icon t)
(defun lookup-password (&rest keys)
  (let ((result (apply #'auth-source-search keys)))
    (if result
        (funcall (plist-get (car result) :secret))
        nil)))
;; SPC a a for XKCD
;; (map! :leader
;;       :desc "Random XKCD"
;;       "a" #'xkcd-rand
;;       )
(add-to-list 'same-window-regexps "\*vterm: .*\*")
