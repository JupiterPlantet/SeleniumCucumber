package com.cucumber.framework.helper.PageObject.vendorPage;

import com.cucumber.framework.helper.Logger.LoggerHelper;
import com.cucumber.framework.helper.PageObject.PageBase;
import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

import java.io.File;
import java.util.Random;

public class VendorListPage extends PageBase {

    private WebDriver driver;
    private final Logger log = LoggerHelper.getLogger(com.cucumber.framework.helper.PageObject.createcategorypage.CreateCategoryPage.class);
    private String vendName;

    public VendorListPage(WebDriver driver) {
        super(driver);

    }

    @FindBy(how= How.CLASS_NAME,using="page-title")
    public WebElement title;

    @FindBy(how=How.XPATH, using = "//input[@type='search']")
    public WebElement search;

    @FindBy(how=How.XPATH, using = "//a[@onclick='AddEvent(10066)']")
    public WebElement addEvent;





    public void searchField(String vname){
        vendName = vname;
        search.sendKeys(vname);
    }

    public boolean isSearchVendorPresent() {

        search.sendKeys(vendName);
        if (addEvent.getText().equals("Add Event")) {
            return true;
        }else {
            return false;
        }
    }
    public void setVendorList(String name)
        {
        vendName = name;
    }


    public void goToAddEvent(){
        addEvent.click();
    }


}
