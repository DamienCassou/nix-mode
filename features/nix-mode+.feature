Feature: Indenting nix buffers
  In order to read Nix files easily
  As a user
  I want Emacs to indent my Nix files properly

  Background:
    Given I am in buffer "test.nix"
    And I clear the buffer
    And I turn on nix-mode+

  Scenario: Simple function
    When I insert:
    """
    { config, pkgs, ... }:
 
    stdenv.mkDerivation rec {
    version = "645";
    };
    """
    And I place the cursor before "version ="
    Then the cursor should be at column "0"

    Given I indent the line
    When I place the cursor before "version ="
    Then the cursor should be at column "2"

