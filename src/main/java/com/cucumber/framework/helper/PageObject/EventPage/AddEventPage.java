package com.cucumber.framework.helper.PageObject.EventPage;

import com.cucumber.framework.helper.Logger.LoggerHelper;
import com.cucumber.framework.helper.PageObject.PageBase;
import com.cucumber.framework.helper.PageObject.vendorPage.VendorListPage;
import org.apache.log4j.Logger;
import org.openqa.selenium.*;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

import java.util.List;

public class AddEventPage extends PageBase {

    private WebDriver driver;
    private Logger log = LoggerHelper.getLogger(VendorListPage.class);
    private String vendName;
    private String eveName;

    public AddEventPage(WebDriver driver) {
        super(driver);
        this.driver = driver;
    }

    @FindBy(how = How.XPATH, using = "//tr[contains(@class, 'gradeX odd')]//td//a")
    public WebElement addEvent;

    @FindBy(how =How.XPATH, using = "//a[contains(text(), 'Add Event')]")
    public WebElement addEvent1;

    @FindBy(how = How.CLASS_NAME, using = "page-title")
    public WebElement title;

    @FindBy(how= How.XPATH, using = "//h4[contains(@style, 'margin-top')]")
    public WebElement title1;

    @FindBy(how = How.XPATH, using = "//input[@type='search']")
    public WebElement searchField;

    @FindBy(how = How.XPATH, using = "//td[@class='sorting_1']")
    public WebElement eventName;

    @FindBy(how = How.XPATH, using = "//button[contains(@class, 'btn green')]")
    public WebElement status;

    @FindBy(how = How.XPATH, using = "//ul[contains(@class, 'dropdown-menu pull-left')]//li//a")
    public WebElement statusType;

    @FindBy(how = How.XPATH, using = "//span[contains(@class, 'label label-sm label-danger')]")
    public WebElement Inactive;

    @FindBy(how = How.XPATH, using = "//span[contains(text(), 'InActive')]")
    public WebElement getInactive;

    @FindBy(how = How.XPATH, using = "//span[contains(text(), 'Active')]")
    public WebElement Active;

    @FindBy (how =How.XPATH, using = "//a[@class='on-default edit-row']")
    public WebElement edtBtn;


    public void goToAddEvent() {
        addEvent1.click();
    }

    public boolean isUserInEventListPage() {
        if (title1.getText().equals("List of Events")) {
            return true;
        } else {
            return false;
        }



    }

    public void selectEvent(String name) {

        vendName = name;
        searchField.sendKeys(name);
        edtBtn.click();

    }

    public void searchEvent(String eName) {
        eveName = eName;
        searchField.sendKeys(eName);
    }

    public boolean userCanSeeEvent() {
        if (eventName.getText().contains("thday-1297")) {
            return true;
        } else {
            return false;
        }

    }

    public void inactiveStatus() {

        status.click();
      //  statusType.click();
              List<WebElement>list = driver.findElements(By.xpath("//ul[contains(@class, 'dropdown-menu pull-left')]//li//a"));
        System.out.println(list.size());
               for(int i=0; i<list.size(); i++){
           System.out.println(list.get(i).getText());
             if(list.get(i).getText().contains("Inactive")){
               list.get(i).click();
              break;
          }


        }
        Alert alertOK = driver.switchTo().alert();
        alertOK.accept();

    }



    public void activeStatus() {

        status.click();
        //  statusType.click();
        List<WebElement>list = driver.findElements(By.xpath("//ul[contains(@class, 'dropdown-menu pull-left')]//li//a"));
        System.out.println(list.size());
        for(int i=0; i<list.size(); i++){
            System.out.println(list.get(i).getText());
            if(list.get(i).getText().contains("Active")){
                list.get(i).click();
                break;
            }


        }
        Alert alertOk = driver.switchTo().alert();
        alertOk.accept();

    }
    public boolean userCanSeeActive() {

        if (Active.getText().equals("Active")) {
            return true;
        } else {
            return false;
        }

    }
    public boolean userCanSeeEditBtn(){
        if(edtBtn.getText().equals("Edit")){
            return true;
        }
        else {
            return false;
        }
    }
    public boolean userCanSeeActiveText(){
        if(Active.getText().contains("Act")){
            return true;
        }
        else {
            return false;
        }
    }
    public boolean userCanSeeInActiveText(){
        if(Inactive.getText().equals("InActive")){
            return true;
        }else {
            return false;
        }
    }
    public void searchEditedEvent(){
        searchField.sendKeys("Birthday Event");
    }
    public boolean userCanSeeEditedEvent(){
        if(eventName.getText().equals("Birthday Event")){
            return true;
        }else {
            return false;
        }
    }
 }


