;;;;;;;kuei
(require 'package)

(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https:/elpa.org/packages/"))
(package-initialize)
;;
(setq gnutls-algorithm-priority "NORMAL: -VERS-TLS1.3")
;;
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
;;;;
(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))
