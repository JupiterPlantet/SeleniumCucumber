Feature: Verify user can register branch

Background: Given User in Branch List page
 Scenario: Admin should be able to register branch

			GivenI am in "List of Branch page"
			When I click on "Register Branch"
			Then I should see "Register VendorBranch" page"
	
	Scenario Outline: Admin should be able to add register vendorbranch with mandatory fields sucessfully

			Given I am in "Register VendorBranch" page
		  When I click on "Select Vendor"
			Then I set the select vendor to "KFC"
			And  I enter branch name "<Branch Name >" and branch email "<Branch Email>"
			Then I enter password "<Password>" and address"<Address1>"
			Then I enter Lattiude  "<Lattiude  >" and Longitude "<Longitude>"
			And I enter city "<City>" and phone number "<Phone Number>"
			Then I click Add button
		
			
		Examples:
		 |Branch Name |Branch Email        |Password  |Address1                         |Lattiude   |Longitude         |City  |Phone Number|
		 |KFCSTARTFORD|uddinsadi7@gmail.com|startford1|Stratford shopping centre E15 1NG|51.2345677 |0.0891234567865434|Stratford|02085341243|
	
 Scenario Outline: Admin should not be able to add register vendorbranch without mandatory fields
		
		Given I am in "Register VendorBranch" page
		  When I click on "Select Vendor"
			Then I set the select vendor to "KFC"
			And  I enter branch name "<Branch Name >"
			Then I enter password "<Password>" and address"<Address1>"
			Then I enter Lattiude  "<Lattiude  >" and Longitude "<Longitude>"
			And I enter city "<City>" and phone number "<Phone Number>"
			Then I click Add button
			Then I should see a validation massage "<Please fill in this field>"
		
		Examples:
		 |Branch Name |Branch Email        |Password  |Address1                         |Lattiude   |Longitude         |City  |Phone Number|
		 |KFCSTARTFORD|Please fill in this field|startford1|Stratford shopping centre E15 1NG|51.2345677 |0.0891234567865434|Stratford|02085341243|
		 
		 Scenario Outline: Admin can't be able to add register vendorbranch if password character is not min 6 and max 10

			Given I am in "Register VendorBranch" page
		  When I click on "Select Vendor"
			Then I set the select vendor to "KFC"
			And  I enter branch name "<Branch Name >" and branch email "<Branch Email>"
			Then I enter password "<Password>" and address"<Address1>"
			Then I enter Lattiude  "<Lattiude  >" and Longitude "<Longitude>"
			And I enter city "<City>" and phone number "<Phone Number>"
			Then I click Add button
			Then i should see a validation massage "<Password should be minimum 6 and maximum 10 digits only>"
		
			
		Examples:
		 |Branch Name |Branch Email        |Password  |Address1                         |Lattiude   |Longitude         |City  |Phone Number|
		 |KFCSTARTFORD|uddinsadi7@gmail.com|startford1234|Stratford shopping centre E15 1NG|51.2345677 |0.0891234567865434|Stratford|02085341243|
	
	
	---> Your GWTs are good in general, however you are repeating yourself far too often.
Even though you can reuse code under each step, it is repetitive to read as a GWT.
Make your scenarios a lot simpler and smaller.
	
	Scenario Outline: Admin can search the Branch and active and inactive vendor
	
			Given I am in the "List of Branch page"
			Then I enter in the Search "<Search>"
			When I select action "Active"
			Then Vendor status shows active sucessfully
			When I select action " Inactive"
			Then Vendor status shows inactive sucessfully
			Examples:
			|Search|
			|KFC|
			
	Scenario Outline: Admin can Edit vendor branch info
	
			Given I am in the "List of Branch Page"
			Then I click On "Edit"
			And I can see the page "Edit VendorBranch"
			Then I edit branch name "<Branch Name>"
			Then click Add Button
			
			Examples:
			|Branch Name|
			|Kfc Eastham           |
			
	--> Make sure that your |s are neatly arranged, with multiple examples it can affect readability
	   
 			