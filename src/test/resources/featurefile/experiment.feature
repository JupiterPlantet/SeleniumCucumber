@1
Feature: Expermiment


  Background:

    Given step 1
    And step 2




  Scenario Outline:

    Given step 3
    And step 4 "<data>"

    Examples:
      | data |
      | d    |
      | e    |