(require 'helm-config)
(defvar dired-bind-jump nil)
(helm-mode t)
(define-key global-map (kbd "M-x")     'helm-M-x)
(define-key global-map (kbd "C-x C-f") 'helm-find-files)
(define-key global-map (kbd "M-y")     'helm-show-kill-ring)
(define-key helm-map (kbd "C-h")       'delete-backward-char)
(define-key helm-find-files-map (kbd "C-h") 'delete-backward-char)
(define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action)
(define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action)
;; Emulate 'kill-line' in helm minibuffer
(defvar helm-delete-minibuffer-contents-from-point t)
(defadvice helm-delete-minibuffer-contents (before helm-emulate-kill-line activate)
  "Emulate 'kill-line' in helm minibuffer"
  (kill-new (buffer-substring (point) (field-end))))

