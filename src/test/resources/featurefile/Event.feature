Feature: Verify user can add and edit Events


  Scenario Outline: Admin should be able to add Events with mandatory fields successfully

    Given I am in "Vendor List" page
    When I add event for a vendor with name "<Vendor Name>"
    When I select to "Add Event"
    Then I should see "Create Event" page
    When I enter Event Name with "<Event Name>" and Event Description with "<Event Description>" and Event Start Date with"<Event Start Date>"
#    When I enter Event End Date with "<Event End Date>" and Event Start Time with "<Event Start Time>" and Event End Time with "<Event End Time>"
#    When I enter Event Category with "<Event Category>" and Event Address1 with "<Event Address1>" and City with "<City>"
#    When I enter Latitude with "<Latitude>" and Longitude with "<Longitude>" and Terms&Conditions with "<Terms&Conditions>" and image with "Choose File"
    When I enter the data to create event
      | Event Name        | <Event Name>        |
      | Event Description | <Event Description> |
      |                   |                     |

    Then the Event should be submitted successfully
    And the submitted Event with "<Event Name>" should be shown in list of discount page

    Examples:
      | Vendor Name | Event Name | Event Description | Event Start Date | Event End Date | Event Start Time | Event End Time | Event Category | Event Address1 | City | Latitude | Longitude | Terms&Conditions |
      | a_shailaja  |            |                   |                  |                |                  |                |                |                |      |          |           |                  |

  Scenario Outline: Admin should not be able to add Events with out mandatory fields

    Given I am in "Vendor List" page
    When I add Event for a vendor with name "<Vendor Name>"
    When I select to "Add Event"
    Then I should see "Create Event" page
    When I enter Event Address2 with "<Event Address2>" and State/Country with "<State/Country>"
    Then I should see a validation massage "<Error Message>"

    Examples:
      | Vendor Name | Event Address2 | State/Country | Error message            |
      | a_shailaja  |                |               | This is a required field |


  Scenario Outline: Admin should be able to edit Events with mandatory fields successfully

    Given I am in "Vendor List" page
    When I add Event for a vendor with name "<Vendor Name>"
    When I select to "Add Event"
    Then I should see "Create Event" page
    When I enter Event Name with "<Event Name>" and Event Description with "<Event Description>" and Event Start Date with"<Event Start Date>"
    When I enter Event End Date with "<Event End Date>" and Event Start Time with "<Event Start Time>" and Event End Time with "<Event End Time>"
    When I enter Event Category with "<Event Category>" and Event Address1 with "<Event Address1>" and City with "<City>"
    When I enter Latitude with "<Latitude>" and Longitude with "<Longitude>" and Terms&Conditions with "<Terms&Conditions>" and image with "Choose File"
    Then the Event should be submitted successfully
    And the submitted Event with "<Event Name>" should be shown in list of Event page
    When I edit the Event "<Event>"
    When I enter Event Start time with "<Edited Start Event Time>" and Event End Time with "<Edited Event End Time>"

    Examples:
      | Vendor Name | Event Name | Event Description | Event Start Date | Event End Date | Event Start Time | Event End Time | Event Category | Event Address1 | City | Latitude | Longitude | Terms&Conditions | Edited Start Event Time | Edited Event End Time |
      | a_shailaja  |            |                   |                  |                |                  |                |                |                |      |          |           |                  |                         |                       |


  Scenario Outline: Admin should be able to Inactive and Activate Events Status

    Given I am in "Vendor List" page
    When I select to "Add Event" with name  "<Event>"
    When I Inactive the Event with "<Event>"
    Then the Status of the Event should be changed as Inactive
    And Edit option should not be visible successfully
    When I Active the event with "<Event>"
    Then the Status of Event should be changed as Active and Edit option should be visible successfully

    Examples:
      | Vendor Name | Event Name | Event Description | Event Start Date | Event End Date | Event Start Time | Event End Time | Event Category | Event Address1 | City | Latitude | Longitude | Terms&Conditions | Dialog                                     |
      | a_shailaja  |            |                   |                  |                |                  |                |                |                |      |          |           |                  | Do you want to change the status of Event? |


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