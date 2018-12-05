Feature: Verify user can add and edit Events


   Scenario Outline: Admin should be able to add Events with mandatory fields successfully
     Given Admin logs into the panel with valid credentials
     Then the login should be successful
     Given I navigate to Vendor List page
     When I click Add Event
     Then I should see List of Events page
     When I enter Event Name with "<Event Name>" and Event Description with "<Event Description>" and Event Category with "<Event Category>" and Event Address with "<Event Address1>" and City with "<City>" and enter Latitude with "<Latitude>" and Longitude with "<Longitude>" and Terms&Conditions with "<Terms&Conditions>"
     Then the Event should be submitted successfully and the submitted Event "<Event Name>" should be shown in List of Event page
     Examples:
      | Vendor Name | Event Name | Event Description |  Event Category | Event Address1              | City        | Latitude | Longitude | Terms&Conditions |
      | a_shailaja1 | Birthday   | for kids          |    celebration  | 120, Rancliffe road, E6 3hn | London      |56.2322   | 60.33344  |         apply    |


   Scenario Outline: Admin should not be able to add Events without mandatory fields

     Given Admin logs into the panel with valid credentials
     Then the login should be successful
     Given I am in Vendor List page
     When I search for a vendor with name "<Vendor Name>" and click on Add Event
     Then I should see Events List page
     When I select to Add Event
     When I enter Event Address with "<Event Address2>" and State/Country with "<State/Country>"
     Then I should see a validation massage "<Error Message>"

     Examples:
      | Vendor Name | Event Address2 | State/Country | Error message            |
      | a_shailaja1 |     Bedford    | Bedfordshire       | This is a required field |


  Scenario Outline: Admin should be able to Inactive Events Status

      Given Admin logs into the panel with valid credentials
      Then the login should be successful
      Given I am in List of Event page
      When I search for Event Name with "<Event Name>"
      Then I should see searched Event
      When I select Inactive
      Then the status should be changed successfully

    Examples:
        |   Event Name         |
        |   Birthday-1297161447  |

  Scenario Outline: User should be able to Activate Status of Event

    Given Admin logs into the panel with valid credentials
    Then the login should be successful
    Given I am on List of Event page
    When I search Event Name with "<Event Name>"
    Then I should see searched Event name
    When I select Active
    Then the status should change successfully

    Examples:
      | Event Name                    |
      |   Birthday-1297161447         |


  Scenario Outline: Admin should be able to edit Events with mandatory fields successfully

    Given Admin logs into the panel with valid credentials
    Then the login should be successful
    Given I am on Events List page
    When I search for an Event Name with "<Event Name>" and click on Edit
    Then I should see Edit Event page
    When I edit Event Start Time with "<Edited Event Start Date>" and Event Start Time with "<Edited Start Event Time>" and Event End Time with "<Edited Event End Time>" and Submit
    Then I should be able to see edited event

     Examples:
       | Vendor Name | Event Name      | Edited Event Start Date             | Edited Start Event Time       | Edited Event End Time |
       | a_shailaja1  |    Birthday Event|    12/18/2018                     |      1300                    |      2300                 |




#  Scenario Outline: Admin should be able search Events in Search bar
#
#    Given I am in "Vendor List" page
#    When I select to "Add Event"
#    Then I should see "Create Event" page
#    When I enter my desired Event Name with "<Event Name>" in the search bar
#    Then I should see my desired Event name on "List of Event" page
#    When I clear the Search bar
#    Then all the "List of Events" should be appeared back on the page
#
#    Examples:
#      | Event Name |


#  Scenario Outline: Admin should be able to print the List of Events
#
#    Given I am in "Vendor List" page
#    When I select to "Add Event"
#    Then I should see "List of Events" on the page
#    When I click on "print"
#    Then a Event Name list with "<Event Name>"  should pop up in window based Print page
#    When I click "Cancel" on window base print page
#    Then I should see "List Of Event" page
#
#    Examples:
#      | Event Name |
#      |            |
#
#
#  Scenario Outline: Admin should be able to download the List Of Events in pdf format
#
#    Given I am in "Vendor List" page
#    When I select to "Add Events"
#    Then I should see "List of Events" with the page
#    When I click on "pdf"
#    Then the List of Events with "<Event Names>" should be downloaded in the system successfully in pdf format
#
#    Examples
#      | Event Names    |
#      | Christmas Eve  |
#      | New year Event |
#
#
#  Scenario: Admin should be able to copy the List of Events
#
#    Given I am in "Vendor List" page
#    When I select to "Add Event"
#    Then I should see "List of Events" on the page
#    When I click on "copy"
#    Then I should see "Copy to Clipboard" message
#
#
#  Scenario: Admin should be able to see Next and Previous Page when List of Events are more than one page
#
#    Given I am in "Vendor List" page
#    When I select to "Add Event"
#    Then I should see "List of Events" on the page
#    When I click "Next"
#    Then the page should move to the naxt page
#    When I click "Previous"
#    Then the page should go to the previous page
#
#
#  Scenario: Admin should not be able to use Next and Previous buttons when List of Events are not more than one page
#
#    Given I am in "Vendor List" page
#    When I select to "Add Event"
#    Then I should see "List of Events" on the page
#    When I click on "Next"
#    Then I should not be able to click "Next" button
#    When I click "Previous"
#    Then I should not be able to click "Previous" button
#
#
#
#
#
#  ---> Your GWTs are good in general, however you are repeating yourself far too often.
#  Even though you can reuse code under each step, it is repetitive to read as a GWT.
#  Make your scenarios a lot simpler and smaller.