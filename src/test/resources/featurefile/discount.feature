Feature: Verify user can add and edit Discounts


  Scenario Outline: Admin should be able to add discounts with mandatory fields successfully

    Given I am in "Vendor List" page
    When I add discount for a vendor with name "<Vendor Name>"
    When I select to "Add Discounts"
    Then I should see "Create Discount" page
    When I enter Discount with "<Discount>" and Discount Description with "<Discount Description>" and Discount T&C with "<Discount T&C>"
    Then the discount should be added successfully
    And the added discount with "<Discount>" should be shown in list of discount page

    Examples:
      | Vendor Name | Discount | Discount Description | Discount T&C |
      | a_shailaja  |          |                      |              |

  Scenario Outline: Admin should not be able to add discounts with out mandatory fields

    Given I am in "Vendor List" page
    When I add discount for a vendor with name "<Vendor Name>"
    When I select to "Add Discounts"
    Then I should see "Create Discount" page
    When I enter Discount with "<Discount>" and Discount Description with "<Discount Description>" and Discount T&C with "<Discount T&C>"
    Then I should see a validation massage "<Error Message>"

    Examples:
      | Vendor Name | Discount | Discount Description | Discount T&C | Error Message            |
      | a_shailaja  |          |                      |              | This is a required field |
      | a_shailaja  | Sample   | Sample Desc          |              | This is a required field |
      | a_shailaja  | Sample   |                      |              | This is a required field |


  Scenario Outline: Admin should be able to edit discounts with mandatory fields successfully

    Given I am in "Vendor List" page
    When I add discount for a vendor with name "<Vendor Name>"
    When I select to "Add Discounts"
    Then I should see "Create Discount" page
    When I enter Discount with "<Discount>" and Discount Description with "<Discount Description>" and Discount T&C with "<Discount T&C>"
    Then the discount should be added successfully
    And the added discount with "<Discount>" should be shown in list of discount page
    When I edit the discount "<Discount>"
    When I enter Discount with "<Edited Discount>" and Discount Description with "<Edited Discount Description>" and Discount T&C with "<Edited Discount T&C>"

    Examples:
      | Vendor Name | Discount | Discount Description | Discount T&C |Edited Discount | Edited Discount Description | Edited Discount T&C |
      | a_shailaja  |          |                      |              |                |                             |                     |

  Scenario Outline: Admin should be able to Deactivate and Activate discounts

    Given I am in "Vendor List" page
    When I add discount for a vendor with name "<Vendor Name>"
    When I select to "Add Discounts"
    Then I should see "Create Discount" page
    When I enter Discount with "<Discount>" and Discount Description with "<Discount Description>" and Discount T&C with "<Discount T&C>"
    Then the discount should be added successfully
    When I Deactive the discount "<Discount>"
    Then the discount should be deactivated successfully
    When I Active the discount "<Discount>"
    Then the discount should be activated successfully


    Examples:
      | Vendor Name | Discount | Discount Description | Discount T&C |
      | a_shailaja  |          |                      |              |