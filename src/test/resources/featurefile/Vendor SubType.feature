Feature: Verify user can create and edit Vendor SubType

  Scenario Outline: Admin should be able to create new Vendor SubType with mandatory fields successfully

    Given I am on "Vendor SubType" page
    When I select "Create Vendor SubType"
    Then I should see "Create Vendor SubType" page
    When I select Vendor SubType with "<Vendor SubType>"
    And I enter Vendor SubType Name with "<Vendor SubType Name>"
    When I click on "Add" button
    Then the new Vendor SubType should be added successfully
    And the added Vendor SubType with "<Vendor SubType>" and "<Vendor SubType Name>" should be shown in List of Vendor SubType page

    Examples:
    |Vendor SubType|Vendor SubType Name|
    |Restaurants   |healthy food       |


    Scenario Outline: Admin should not be able to create new Vendor SubType without mandatory fields

      Given I am on "Vendor SubType" page
      When I select "Create Vendor SubType"
      Then I should see "Create Vendor SubType" page
      Then I leave all mandatory fields empty
      When I click on "Add"
      Then I should see a validation message "<Error Message>"

      Examples:
      |Error Message                     |
      |Please select an item in the list.|


  Scenario Outline: Admin should not be able to create new Vendor SubType when clicking on "Back" button

    Given that I am on List of Vendor SubType page
    When I select "Create Vendor SubType"
    Then I should see "Create Vendor SubType" page
    When I select Vendor SubType with "<Vendor SubType>"
    And I enter Vendor SubType Name with "<Vendor SubType Name>"
    And I click on "Back" button
    Then I should see "List of Vendor SubType page" page
    And the new Vendor SubType should not be present on the List of Vendor SubType page

    Examples:
      |Vendor SubType|Vendor SubType Name|
      |Restaurants   |healthy food       |


      --> Please make sure your spacing and formating is legible


  Scenario Outline: Admin should be able to edit Vendor SubType with mandatory fields successfully

        Given I am on "Vendor SubType" page
        When I select "Create Vendor SubType"
        Then I should see "Create Vendor SubType" page
        When I select Vendor SubType with "<Vendor SubType>"
        And I enter Vendor SubType Name with "<Vendor SubType Name>"
        When I click on "Add" button
        Then the new Vendor SubType should be added successfully
        And the added Vendor SubType with "<Vendor SubType>" and "<Vendor SubType Name>" should be shown in List of Vendor SubType page
        When I edit the Vendor Subtype Name "<Vendor SubType Name>"
        When I select Vendor SubType  with "<Edited Vendor SubType>" and enter Vendor SubType Name with "<Edited Vendor SubType Name>"
        And I click on "Add" button
        Then the Vendor SubType should be saved
        And the edited Vendor SubType Name "<Edited Vendor SubType Name>" with edited Vendor SubType "<Edited Vendor SubType>" should be shown in List of Vendor SubType page

        Examples:

          |Vendor SubType|Vendor SubType Name|Edited Vendor SubType|Edited Vendor SubType Name|
          |Restaurants   |Vegetarian         |Others               |healthy gym               |



  Scenario Outline: Admin should be able to Deactivate and Activate Vendor SubType

          Given I am on "Vendor SubType" page
          When I select "Create Vendor SubType"
          Then I should see "Create Vendor SubType" page
          When I select Vendor SubType with "<Vendor SubType>"
          And I type Vendor SubType Name with "<Vendor SubType Name>"
          When I click on "Add" button
          Then the new Vendor SubType should be added successfully
          And the added Vendor SubType with "<Vendor SubType>" and "<Vendor SubType Name>" should be shown in List of Vendor SubType page
          When I Deactive the Vendor SubType Name "<Vendor SubType Name>"
          Then the Vendor SubType Name "<Vendor SubType Name>" should be deactivated successfully and the status should be incative
          When I Active the Vendor SubType Name "<Vendor SubType Name>"
          Then the Vendor SubType Name "<Vendor SubType Name>" should be activated successfully and the status should be active

          Examples:

          |Vendor SubType|Vendor SubType Name|
          |Restaurants   |Vegan              |



   --> Your GWTs can be much more granular, it's better to have 100 small tests than 10 big tests.
        Refer to the testing pyramid, we want to make it easy to debug.













