(require 'f)

(defvar nix-mode+-support-path
  (f-dirname load-file-name))

(defvar nix-mode+-features-path
  (f-parent nix-mode+-support-path))

(defvar nix-mode+-root-path
  (f-parent nix-mode+-features-path))

(add-to-list 'load-path nix-mode+-root-path)

(require 'nix-mode+)
(require 'espuds)
(require 'ert)

(Setup
 ;; Before anything has run
 )

(Before
 ;; Before each scenario is run
 )

(After
 ;; After each scenario is run
 )

(Teardown
 ;; After when everything has been run
 )
