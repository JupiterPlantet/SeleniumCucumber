package com.cucumber.framework.stepdefinition;

import com.cucumber.framework.helper.PageObject.loginpage.LoginPage;
import com.cucumber.framework.settings.ObjectRepo;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.testng.Assert;

public class LoginAndAccountsSteps {

    private LoginPage loginPage;

    @Given("^Admin logs into the panel with valid credentials$")
    public void adminLogsIntoThePanelWithValidCredentails() throws Throwable {
        ObjectRepo.driver.get(ObjectRepo.reader.getWebsite());
      loginPage = new LoginPage (ObjectRepo.driver);//LoginPage)ObjectRepo.data.get("LoginPage");
      loginPage.loginAsAdmin();
    }

    @Then("^the login should be successful$")
    public void theLoginShouldBeSuccessful() throws Throwable {
        Assert.assertTrue(loginPage.isLoggedIn());
    }
}
