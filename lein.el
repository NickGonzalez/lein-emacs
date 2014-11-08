 ;;; lein.el --- A compilation of convenience commands for leiningen compilation without the repl

;;; Commentary:
 ;;

;;; Code:
(defun lein (cmd)
  (interactive "slein: ")
  (compile (concat  "lein " cmd)))


(defun lein-compile  ()
  (interactive)
  (compile "lein compile"))

(defun lein-doc  ()
  (interactive)
  (compile "lein doc"))

(defun show-docs (dir)
  (interactive "DDoc Directory: ")
  (browse-url (concat "file://" dir  "/index.html")))

(defun lein-jar
   ()
   (interactive)
   (compile "lein jar"))


(defun lein-install
  ()
  (interactive)
  (compile "lein install"))

(defun lein-uberjar
  ()
  (interactive)
  (compile "lein uberjar"))

(defun lein-test
  ()
  (interactive)
  (compile "lein test"))

(defun lein-clean
  ()
  (interactive)
  (compile "lein clean"))

(defun lein-clean-install
  ()
  (interactive)
  (compile "lein clean")
  (compile "lein jar")
  (compile "lein install"))

(defun lein-clean-jar
  ()
  (interactive)
  (compile "lein clean")
  (compile "lein jar"))

(defun lein-run
  ()
  (interactive)
  (start-process "lein-run" "*lein-run*" "/usr/local/bin/lein" "run")
  (switch-to-buffer-other-window "*lein-run*"))


(provide 'lein)


;;; lein.el ends here
