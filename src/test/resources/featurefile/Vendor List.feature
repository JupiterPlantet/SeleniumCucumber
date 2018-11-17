Feature: Verify user can register and edit List of Vendors

  Scenario Outline: Admin should be able to register vendor with mandatory fields successfully

    Given I am in "Vendor List" page
    When I click on "Register Vendor"
    Then I should see "Register Vendor" page
    When I enter Name of the Vendor with "<Vendor Name>" and select Vendor Type with "<Vendor Type>"
    When I choose file with "<Image>" and select Vendor SubType with "<Vendor Subtype>"
    When I enter address with "<Address 2" and address with "<Address>"
    When I enter valid email with "<Email>" and city with "<City>"
    When I enter latitude with "<Latitude>" and assign vendor password with "<Password>"
    When I enter area with "<Area>" and longitude with "<Longitude>"
    When I choose file with "<Vendor Cover Image>" and enter phone number with "<Phone Number>"
    When I enter Terms & Conditions with "<Terms & Conditions>" and info with "<Vendor Info>"
    When I enter website with "<Vendor Website>"
    When I click "Add"
    Then the register vendor should submitted successfully
    And the submitted data with "Vendor Name" should be shown in List of vendors

    Examples:
      | Vendor Name | Vendor Type | Vendor Subtype    | Address 2 | Address | Email | City | Latitude | Password | Area | Longitude | Vendor Cover Image | Phone Number | Terms & Conditions | Vendor Info | Vendor Website |
      | A_Avneesh   |             |                   |           |    	    |       |	   |   		  |		     |      | 	        |		             |		        |                    |                               |


  Scenario Outline: Admin should not be able to register vendor without mandatory fields

    Given I am in "Vendor List" page
    When I click on "Register Vendor"
    Then I should see "Register Vendor" page
    When I enter Name of the Vendor with "<Vendor Name>" and select Vendor Type with "<Vendor Type>"
    When I choose file with "<Image>" and select Vendor SubType with "<Vendor Subtype>"
    When I enter address with "<Address 2" and address with "<Address>"
    When I enter valid email with "<Email>" and city with "<City>"
    When I enter latitude with "<Latitude>" and assign vendor password with "<Password>"
    When I click "Add"
    Then I should se an "<Error Message>"

    Examples:
      | Vendor Name | Vendor Type | Vendor Subtype    | Address 2 | Address | Email | City | Latitude | Password | Error Message            |
      | A_Avneesh   |             |                   |           |    	    |       |	   |   		  |		     | This is a required field |


  Scenario Outline: Admin should be able to edit vendor with mandatory fields successfully

    Given I am in "Vendor List" page
    When I click edit under "Action" for a vendor with name "Vendor Name"
    Then I should see "Edit Vendor" page
    When I enter Name of the Vendor with "<Vendor Name>" and select Vendor Type with "<Vendor Type>"
    When I choose file with "<Image>" and select Vendor SubType with "<Vendor Subtype>"
    When I enter address with "<Address 2" and address with "<Address>"
    When I enter valid email with "<Email>" and city with "<City>"
    When I enter latitude with "<Latitude>" and assign vendor password with "<Password>"
    When I enter area with "<Area>" and longitude with "<Longitude>"
    When I choose file with "<Vendor Cover Image>" and enter phone number with "<Phone Number>"
    When I enter Terms & Conditions with "<Terms & Conditions>" and info with "<Vendor Info>"
    When I enter website with "<Vendor Website>"
    When I click "Add"
    Then the register vendor should submitted successfully
    And the submitted data with "Vendor Name" should be shown in List of vendors

    Examples:
      | Vendor Name | Vendor Type | Vendor Subtype    | Address 2 | Address | Email | City | Latitude | Password | Area | Longitude | Vendor Cover Image | Phone Number | Terms & Conditions | Vendor Info | Vendor Website |
      | A_Avneesh   |             |                   |           |    	    |       |	   |   		  |		     |      | 	        |		             |		        |                    |                               |

  Scenario Outline: Admin should not be able to edit vendor without mandatory fields

    Given I am in "Vendor List" page
    When I click edit under "Action" for a vendor with name "Vendor Name"
    Then I should see "Edit Vendor" page
    When I enter Name of the Vendor with "<Vendor Name>" and select Vendor Type with "<Vendor Type>"
    When I choose file with "<Image>" and select Vendor SubType with "<Vendor Subtype>"
    When I enter address with "<Address 2" and address with "<Address>"
    When I enter valid email with "<Email>" and city with "<City>"
    When I enter latitude with "<Latitude>" and assign vendor password with "<Password>"
    When I click "Add"
    Then I should se an "<Error Message>"

    Examples:
      | Vendor Name | Vendor Type | Vendor Subtype    | Address 2 | Address | Email | City | Latitude | Password | Error Message            |
      | A_Avneesh   |             |                   |           |    	    |       |	   |   		  |		     | This is a required field |


  Scenario Outline: Admin should be able to activate an existing vendor

    Given I am in "Vendor List" page
    And I choose a vendor from "Vendor Name"
    When I click "Select" under "Action"
    Then "Active" and "Inactive" should appear
    When I click on "Active"
    Then a confirmation bar with "OK" and "Cancel" should appear
    When I click "OK"
    Then the "Status" of the vendor should be Active

  Scenario Outline: Admin should be able to deactivate an existing vendor

    Given I am in "Vendor List" page
    And I choose a vendor from "Vendor Name"
    When I click "Select" under "Action"
    Then "Active" and "Inactive" should appear
    When I click on "Inactive"
    Then a confirmation bar with "OK" and "Cancel" should appear
    When I click "OK"
    Then the "Status" of the vendor should be InActive


---> Your GWTs are good in general, however you are repeating yourself far too often.
Even though you can reuse code under each step, it is repetitive to read as a GWT.
Make your scenarios a lot simpler and smaller. Note repetitive 'Given' you are using, this can be eradicated.