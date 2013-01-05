;; essentials
(iswitchb-mode 1)
(show-paren-mode 1)
(setq x-select-enable-clipboard t)
(tool-bar-mode 0)

;; setup el-get
(setq el-get-user-package-directory "~/.emacs.d/elinit/")
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(defvar pkgs '(slime 	; needs texinfo for install
	       paredit
	       multi-term
	       clojure-mode
	       nrepl
	       screenwriter
	       emacs-w3m ; needs csv for checkout
	       haskell-mode
	       color-theme
	       go-mode))

(el-get 'sync pkgs)

;; use chicken as default scheme program
(setq scheme-program-name "csi -:c")

