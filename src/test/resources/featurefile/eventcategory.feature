Feature: Event category

#  Scenario Outline: <Actor> should be able to <funtionality>
#  Scenario Outline: <Actor> should not be able to <funtionality>
#
#    Given - > actor (I) should be past tense( precondition)
#    When -> actor (I) in the present tense(test steps/ user action)
#    Then -> actor in the future tense (Should)(What you are expecting out of the system)


  Scenario Outline: Admin should be able to add Events with mandatory fields successfully

#    Given I am in "Masters Event Catogory" page
#    When I click Create Event Category
#    When I Create a Event Category with name "<Event Name>"
#    And I select to "Add" button
#    Then I should see "List of Events" page
#
#    Examples:
#      | Event Name  |
#      | Book Stall  |

    Given I am in "Masters Event Category" page
    When I go to create event category page
    And I create an event with name "<Event Name>"
    Then the event should be successfully created

    Examples:
      | Event Name  |
      | Book Stall  |

      
      --> It is better usually to add more than only 1 example, it shows what the system is capable of. 

  Scenario Outline: Admin should be able to add Events with out mandatory fields

    Given I am in "Masters Event Catogory" page
    When I click Create Event Category
    Then I should see Category Name to be entered
    When I Create a Event Category with Blank "<Event Name>"
    And I select to "Add" button
    Then I should see a validation message "<Error Message>"
    
    Examples:
      | Event Name    | Error Message            |
      |  Face painting| This is a required field |

  Scenario Outline: Admin should be able to edit events with mandatory fields successfully

    Given I am in "Masters Event Catogory" page
    When I click Create Event Category
    Then I should see Search Event Name to be entered
    When I enter a Event name in the search box "<Event Name>"
    Then I should see "selected event"
    When I click edit button for the "<Event Name>"
    Then I should see Event name can be edited
    And I edited the Event name to a "<Updated Event Name>"
    And I click the add button 
    Then I Should see the "<Updated Event Name>" in the list of Events
    
    Examples:
      | Event Name  | Update Event Name |
      | Holi Party  | Music festival    |
    
Scenario Outline: Admin should be able to Activate the Events

    Given I am in "Masters Event Catogory" page
    When I click Create Event Category
    Then I should see Search Event Name to be entered
    When I enter a Event name in the search box "<Event Name>"
    Then I should see "selected event" in the list
    When I selected "Active" from the Action dropdown Menu
    Then I should see a pop up Validation Message "<Confirmation Message>"
    When I click on OK button
    The I should see the updated "<Status>" in the List of Events
    
    Examples:
      | Event Name | Status | Confirmation Message |
      | Pantomime  | Active | Do you want to change the status of Category Type |
        
Scenario Outline: Admin should be able to InActivate the Events

    Given I am in "Masters Event Catogory" page
    When I click Create Event Category
    Then I should see Search Event Name to be entered
    When I enter a Event name in the search box "<Event Name>"
    Then I should see "selected event" in the list
    When I selected "InActive" from the Action dropdown Menu
    Then I should see a pop up Validation Message "<Confirmation Message>"
    When I click on OK button
    The I should see the updated "<Status>" in the List of Events
    
    Examples:
      | Event Name | Status   | Confirmation Message                              |
      | Pantomime  | InActive | Do you want to change the status of Category Type |
      
      
      ---> Your GWTs are good in general, however you are repeating yourself far too often.
Even though you can reuse code under each step, it is repetitive to read as a GWT.
Make your scenarios a lot simpler and smaller.
            