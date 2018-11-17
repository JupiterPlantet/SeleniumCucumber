package com.cucumber.framework.helper.PageObject.listofcategorypage;

import com.cucumber.framework.helper.Logger.LoggerHelper;
import com.cucumber.framework.helper.PageObject.PageBase;
import org.apache.log4j.Logger;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class ListOfCategoriesPage extends PageBase {

	private WebDriver driver;
	private final Logger log = LoggerHelper.getLogger(ListOfCategoriesPage.class);

	public ListOfCategoriesPage(WebDriver driver) {
		super(driver);
		this.driver = driver;
	}


	@FindBy(how= How.LINK_TEXT,using="Add Service Category")
	public WebElement addButton;

	
	public void gotoAddServiceCategoryPage(){
		addButton.click();
	}
}
