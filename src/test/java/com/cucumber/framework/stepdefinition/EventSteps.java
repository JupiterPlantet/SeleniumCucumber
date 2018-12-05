package com.cucumber.framework.stepdefinition;

import com.cucumber.framework.helper.PageObject.EventPage.AddEventPage;
import com.cucumber.framework.helper.PageObject.EventPage.CreateEvent;
import com.cucumber.framework.helper.PageObject.EventPage.EditEventPage;
import com.cucumber.framework.helper.PageObject.dashboardpage.DashboardPage;
import com.cucumber.framework.helper.PageObject.vendorPage.VendorListPage;
import com.cucumber.framework.settings.ObjectRepo;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.testng.Assert;

public class EventSteps {

    public DashboardPage dashboardPage;
    public VendorListPage vendorListPage;
    public AddEventPage addEventPage;
    public CreateEvent createEvent;
    public EditEventPage editEventPage;




    @Given("^I navigate to Vendor List page$")
    public void i_navigate_to_Vendor_List_page() throws Throwable{
        dashboardPage = new DashboardPage(ObjectRepo.driver);
        dashboardPage.gotoVendorListPage();
    }
    @When("^I click Add Event$")
    public void iClickAddEvent() throws Throwable {
        vendorListPage = new VendorListPage(ObjectRepo.driver);
        vendorListPage.goToAddEvent();
        System.out.println("I clicked");
    }
    @Then("^I should see List of Events page$")
    public void iShouldSeeListOfEventsPage() {
        addEventPage = new AddEventPage(ObjectRepo.driver);
       Assert.assertTrue(addEventPage.isUserInEventListPage());
        addEventPage.goToAddEvent();
        System.out.println("clicked");
    }
    @When("^I enter Event Name with \"([^\"]*)\" and Event Description with \"([^\"]*)\" and Event Category with \"([^\"]*)\" and Event Address with \"([^\"]*)\" and City with \"([^\"]*)\" and enter Latitude with \"([^\"]*)\" and Longitude with \"([^\"]*)\" and Terms&Conditions with \"([^\"]*)\"$")
    public void iEnterEventNameWithAndEventDescriptionWithAndEventCategoryWithAndEventAddressWithAndCityWithAndEnterLatitudeWithAndLongitudeWithAndTermsConditionsWith(String name, String desc, String catType, String eAddress1, String city, String eLtd, String eLgd, String term) throws Throwable {
        createEvent = new CreateEvent(ObjectRepo.driver);
        createEvent.createEventWith(name, desc, catType, eAddress1, city, eLtd, eLgd, term);
    }
    @Then("^the Event should be submitted successfully and the submitted Event \"([^\"]*)\" should be shown in List of Event page$")
    public void the_Event_should_be_submitted_successfully_and_the_submitted_Event_should_be_shown_in_List_of_Event_page(String name) throws Throwable {
        createEvent = new CreateEvent(ObjectRepo.driver);
        Assert.assertTrue(createEvent.isSearchResultsPresent1());
        System.out.println("Pass");
    }
    @Given("^I am in Vendor List page$")
    public void iAmInVendorListPage() throws Throwable {
        dashboardPage = new DashboardPage(ObjectRepo.driver);
        dashboardPage.gotoVendorListPage();
    }
    @When("^I search for a vendor with name \"([^\"]*)\" and click on Add Event$")
    public void iSearchForAVendorWithNameAndClickOnAddEvent(String vname) throws Throwable {
        vendorListPage = new VendorListPage(ObjectRepo.driver);
        vendorListPage.searchField(vname);
        vendorListPage.goToAddEvent();
    }
    @Then("^I should see Events List page$")
    public void iShouldSeeEventsListPage() throws Throwable {
        addEventPage = new AddEventPage(ObjectRepo.driver);
        Assert.assertTrue(addEventPage.isUserInEventListPage());
        System.out.println("landed");
    }
    @When("^I select to Add Event$")
    public void iSelectToAddEvent() throws Throwable {
        createEvent = new CreateEvent(ObjectRepo.driver);
        createEvent.setAddEvent();
    }
    @When("^I enter Event Address with \"([^\"]*)\" and State/Country with \"([^\"]*)\"$")
    public void iEnterEventAddressWithAndStateCountryWith(String address2, String country) throws Throwable {
        createEvent = new CreateEvent(ObjectRepo.driver);
        createEvent.nonMandatoryEvent(address2, country);
    }
    @Then("^I should see a validation massage \"([^\"]*)\"$")
    public void iShouldSeeAValidationMassage(String errorMsg) throws Throwable {
        createEvent = new CreateEvent(ObjectRepo.driver);
        Assert.assertTrue(createEvent.validateMessage());
        System.out.println("validated");
    }
    @Given("^I am in List of Event page$")
    public void iAmInListOfEventPage() throws Throwable {
        dashboardPage = new DashboardPage(ObjectRepo.driver);
        dashboardPage.gotoEventListPage();
    }
    @When("^I search for Event Name with \"([^\"]*)\"$")
    public void iSearchForEventNameWith(String eName) throws Throwable {
        addEventPage = new AddEventPage(ObjectRepo.driver);
        addEventPage.searchEvent(eName);
    }
    @Then("^I should see searched Event$")
    public void iShouldSeeSearchedEvent() throws Throwable {
        addEventPage = new AddEventPage(ObjectRepo.driver);
        Assert.assertTrue(addEventPage.userCanSeeEvent());
    }
    @When("^I select Inactive$")
    public void iSelectInactive() throws Throwable {
        addEventPage = new AddEventPage(ObjectRepo.driver);
        addEventPage.inactiveStatus();
    }
    @Then("^the status should be changed successfully$")
    public void theStatusShouldBeChangedSuccessfully() throws Throwable {
        addEventPage = new AddEventPage(ObjectRepo.driver);
        Assert.assertTrue(addEventPage.userCanSeeInActiveText());
        System.out.println("Inactivated");
    }
    @Given("^I am on List of Event page$")
    public void iAmOnListOfEventPage() throws Throwable {
        dashboardPage = new DashboardPage(ObjectRepo.driver);
        dashboardPage.gotoEventListPage();
    }
    @When("^I search Event Name with \"([^\"]*)\"$")
    public void iSearchEventNameWith(String eName) throws Throwable {
        addEventPage = new AddEventPage(ObjectRepo.driver);
        addEventPage.searchEvent(eName);
    }
    @Then("^I should see searched Event name$")
    public void iShouldSeeSearchedEventName() throws Throwable {
        addEventPage = new AddEventPage(ObjectRepo.driver);
        Assert.assertTrue(addEventPage.userCanSeeEvent());
    }
    @When("^I select Active$")
    public void iSelectActive() throws Throwable {
        addEventPage = new AddEventPage(ObjectRepo.driver);
        addEventPage.activeStatus();
    }
    @Then("^the status should change successfully$")
    public void theStatusShouldChangeSuccessfully() throws Throwable {
        addEventPage = new AddEventPage(ObjectRepo.driver);
        Assert.assertTrue(addEventPage.userCanSeeActiveText());
        System.out.println("Activated");
    }
    @Given("^I am on Events List page$")
    public void iAmOnEventsListPage() throws Throwable {
        dashboardPage = new DashboardPage(ObjectRepo.driver);
        dashboardPage.gotoEventListPage();
    }
    @When("^I search for an Event Name with \"([^\"]*)\" and click on Edit$")
    public void iSearchForAnEventNameWithAndClickOnEdit(String name) throws Throwable {
        addEventPage = new AddEventPage(ObjectRepo.driver);
        addEventPage.selectEvent(name);
    }
    @Then("^I should see Edit Event page$")
    public void iShouldSeeEditEventPage() throws Throwable {
        editEventPage = new EditEventPage(ObjectRepo.driver);
        Assert.assertTrue(editEventPage.isEditEventPresent());
        System.out.println("landed");
    }
    @When("^I edit Event Start Time with \"([^\"]*)\" and Event Start Time with \"([^\"]*)\" and Event End Time with \"([^\"]*)\" and Submit$")
    public void iEditEventStartTimeWithAndEventStartTimeWithAndEventEndTimeWithAndSubmit(String eSD, String eST, String eET) throws Throwable  {
        editEventPage = new EditEventPage(ObjectRepo.driver);
        editEventPage.createEditEvent(eSD, eST, eET);
    }
    @Then("^I should be able to see edited event$")
    public void iShouldBeAbleToSeeEditedEvent(){
        addEventPage = new AddEventPage(ObjectRepo.driver);
        addEventPage.searchEditedEvent();
        Assert.assertTrue(addEventPage.userCanSeeEditedEvent());
        System.out.println("Edited");
    }
}