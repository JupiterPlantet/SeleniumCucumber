package com.cucumber.framework.stepdefinition;

import com.cucumber.framework.helper.PageObject.createcategorypage.CreateCategoryPage;
import com.cucumber.framework.helper.PageObject.dashboardpage.DashboardPage;
import com.cucumber.framework.helper.PageObject.listofcategorypage.ListOfCategoriesPage;
import com.cucumber.framework.settings.ObjectRepo;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.testng.Assert;

public class CategoryStepdefs {

    public DashboardPage dashboardPage;
    public ListOfCategoriesPage listOfCategoriesPage;
    public CreateCategoryPage createCategoryPage;

    @Given("^I navigate to service category page$")
    public void iNavigateToServiceCategoryPage() throws Throwable {
       dashboardPage = new DashboardPage(ObjectRepo.driver);
       dashboardPage.gotoServiceCategoryPage();
    }

    @When("^I click on Add service category$")
    public void iClickOnAddServiceCategory() throws Throwable {
        listOfCategoriesPage = new ListOfCategoriesPage(ObjectRepo.driver);
        listOfCategoriesPage.gotoAddServiceCategoryPage();
    }

    @Then("^I can see create category page$")
    public void iCanSeeCreateCategoryPage() throws Throwable {
        createCategoryPage = new CreateCategoryPage(ObjectRepo.driver);
        Assert.assertTrue(createCategoryPage.isUserInCreateCategoryPage());
    }

    @When("^I generate random number$")
    public void iGenerateRandmonNumber() throws Throwable {

        dashboardPage = new DashboardPage(ObjectRepo.driver);

        System.out.println("REAL RANDOM NUMBER "+Math.abs(dashboardPage.getRandomNumber()%11));
    }

    @When("^I enter category name with \"([^\"]*)\" and category description with\"([^\"]*)\"$")
    public void iEnterCategoryNameWithAndCategoryDescriptionWith(String name, String desc) throws Throwable {
    createCategoryPage.createCategoryWith(name,desc);
    }

    @Then("^I can see added service in list of category$")
    public void iCanSeeAddedServiceInListOfCategory() throws Throwable {
        Assert.assertTrue(createCategoryPage.isSearchResultsPresent());


    }
}
