package com.cucumber.framework.helper.PageObject.dashboardpage;

import com.cucumber.framework.helper.Button.ButtonHelper;
import com.cucumber.framework.helper.Logger.LoggerHelper;
import com.cucumber.framework.helper.PageObject.PageBase;
import com.cucumber.framework.settings.ObjectRepo;
import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class DashboardPage extends PageBase {

	private WebDriver driver;
	private final Logger log = LoggerHelper.getLogger(DashboardPage.class);

	public DashboardPage(WebDriver driver) {
		super(driver);
		this.driver = driver;
	}
	
	public void gotoServiceCategoryPage(){
		driver.get("http://mca.bananaappscenter.com/User/SerCategoriesList");
	}
	public void gotoVendorListPage(){
		driver.get("http://mca.bananaappscenter.com/User/VendorList");
	}
	public void gotoCreateEventPage(){
	    driver.get("http://mca.bananaappscenter.com/User/AddEvent?VenID=10066");
    }
    public void gotoEventListPage(){driver.get("http://mca.bananaappscenter.com/User/EventsList/10066");}
}
