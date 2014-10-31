;; This file contains your project specific step definitions. All
;; files in this directory whose names end with "-steps.el" will be
;; loaded automatically by Ecukes.

(Given "^I indent the line$"
  (lambda ()
    (indent-for-tab-command)))

(Then "^the cursor should be at column \"\\([^\"]+\\)\"$"
  (lambda (column)
    (let ((message "Expected cursor to be at column '%s', but was at '%s'"))
      (cl-assert (= (string-to-number column) (current-column)) nil message column (current-column)))))
;; Local Variables:
;; eval: (flycheck-mode -1)
;; End:
