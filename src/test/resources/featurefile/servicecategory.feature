Feature: Verify that admin can add,edit ,activate and deactivate service from the service category list.


  Scenario Outline: Admin should be able to add service category with all mandatory field successfully
    Given Admin logs into the panel with valid credentials
    Then the login should be successful
    Given I navigate to service category page
    When  I click on Add service category
    Then  I can see create category page
#    When I generate random number
    When  I enter category name with "<Category Name>" and category description with"<Category Description>"
    Then  I can see added service in list of category

    Examples:
      |Category Name|Category Description|
      |Hair Saloon  |test                |

#  Scenario Outline: Admin should able to activate or deactivate service  from the list of categories
#    Given I am on service category Page
#    When  I click on Add service category
#    Then  I can see create category page
#    When  I enter category name with "<Category Name>" and category description with"<Category Description>"
#    And   I choose category image by clicking choose file
#    And   I choose category cover image by clicking choose file
#    And   I enter category video link and click on submit button
#    Then  I can see added service in list  of category
#    When  I select action inactive for added service
#    Then  I can deactivate the service from category list by clicking on ok button
#    When  I select action active  for the added service
#    Then  I can activate the serive from the service catregory list by clicking on ok button
#    Examples:
#      |Category Name|Category Description|
#      |Hair Saloon  |test                |
#
#    Scenario Outline: Admin can edit the detail for already added service category from list
#      Given I am on service category Page
#      When  I click on Add service category
#      Then  I can see create category page
#      When  I enter category name with "<Category Name>" and category description with"<Category Description>"
#      And   I choose category image by clicking choose file
#      And   I choose category cover image by clicking choose file
#      And   I enter category video link and click on submit button
#      Then  I can see added service in list  of category
#      When  I click on edit for a added servce category
#      Then  I can see edit category page
#      When  I change category name with "<edit name>" and category description with"<edit category>" and click on submit
#            button
#      Then  I can see edited detail on service category
#      Examples:
#        |Category Name|Category Description|edit name|edit category|
#        |Hair Saloon  |test                |saloon   |Barber       |
#
#    Scenario Outline: Admin can add image for service from list of category
#      Given I am on service category Page
#      When  I click on Add service category
#      Then  I can see create category page
#      When  I enter category name with "<Category Name>" and category description with"<Category Description>"
#      And   I choose category image by clicking choose file
#      And   I choose category cover image by clicking choose file
#      And   I enter category video link and click on submit button
#      Then  I can see added service in list  of category
#      When  I click on  Add image
#      Then  I can see list of categorie images
#      Examples:
#        |Category Name|Category Description|
#        |Hair Saloon  |test                |
#
#    Scenario: Admin can see next page and previous of list of category  if available
#      Given I am on service category Page
#      When  I click on next button if  next page available
#      Then  I can see the next available page of list of categories
#      When  I click on previous button
#      Then  I can see previous page
#
#    Scenario Outline: Admin should not able to add service without mandatory field
#      Given I am on service category Page
#      When  I click on Add service category
#      Then  I can see create category page
#      When  I enter category name with "<Category Name>" and category description with"<Category Description>"
#            and click on submit button
#      Then  I i should see message "<Please fill out this field.>"
#      Examples:
#        |Category Name|Category Description|
#        |Hair Saloon  |                    |
#        |             |test                |
#
#        --> Your GWTs can be much more granular, it's better to have 100 small tests than 10 big tests.
#        Refer to the testing pyramid, we want to make it easy to debug.

