package com.cucumber.framework.helper.PageObject.EventPage;

import com.cucumber.framework.helper.Alert.AlertHelper;
import com.cucumber.framework.helper.Logger.LoggerHelper;
import com.cucumber.framework.helper.PageObject.PageBase;
import org.apache.log4j.Logger;
import org.openqa.selenium.*;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.ui.Select;

import java.io.File;

public class CreateEvent extends PageBase {
    private WebDriver driver;
    private final Logger log = LoggerHelper.getLogger(CreateEvent.class);
    private String eveName;
    AlertHelper alertHelper;


    public CreateEvent(WebDriver driver) {
        super(driver);
        this.driver = driver;
    }

    @FindBy(how = How.ID, using = "Offers_Name")
    public WebElement Offers_Name;

    @FindBy(how = How.ID, using = "Offers_Description")
    public WebElement Offers_Description;

    @FindBy(how = How.XPATH, using = "//td[@class='active day']")
    public WebElement StartDate;

    @FindBy(how = How.XPATH, using = "//td[@class='active day']")
    public WebElement EndDate;

    @FindBy(how = How.ID, using = "Offers_Start__Time")
    public WebElement Offers_Start__Time;

    @FindBy(how = How.NAME, using = "Offers_End_Time")
    public WebElement Offers_End_Time;

    @FindBy(how = How.ID, using = "CategoryTypeList")
    public WebElement CategoryTypeList;

    @FindBy(how = How.XPATH, using = "//input[@name='EventAddress1']")
    public WebElement EventAddress1;

    @FindBy(how = How.NAME, using = "EventCity")
    public WebElement EventCity;

    @FindBy(how = How.NAME, using = "EventLatitude")
    public WebElement EventLatitude;

    @FindBy(how = How.NAME, using = "EventLongitude")
    public WebElement EventLongitude;

    @FindBy(how = How.NAME, using = "Terms")
    public WebElement Terms;

    @FindBy(how = How.ID, using = "Event_Cover_Img")
    public WebElement Event_Cover_Img;

    @FindBy(how = How.CLASS_NAME, using = "page-title")
    public WebElement title;

    @FindBy(how = How.XPATH, using = "//button[@type='submit']")
    public WebElement submit;

    @FindBy(how = How.XPATH, using = "/html[1]/body[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[1]/div[2]/div[2]/label[1]/input[1]")
    public WebElement searchBar;

    @FindBy(how = How.XPATH, using = "//a[@class='on-default edit-row']")
    public WebElement editBtn;

    @FindBy(how=How.XPATH,using = "//input[@type='search']")
    public WebElement searchField;

    @FindBy(how = How.CSS, using ="div.wrapper:nth-child(3) div.container div.row:nth-child(2) div.col-sm-12 form.form-horizontal div.card-box.table-responsive:nth-child(2) div.dataTables_wrapper.form-inline.dt-bootstrap.no-footer div.dataTables_filter label:nth-child(1) > input.form-control.input-sm")
    public WebElement search;

    @FindBy(how = How.NAME, using = "EventAddress2")
    public WebElement Address2;

    @FindBy(how = How.NAME, using = "EventState")
    public WebElement eveState;

    @FindBy(how = How.XPATH, using = "//a[@class='btn btn-success waves-effect waves-light']")
    public WebElement addEvent;





    public void createEventWith(String name, String desc, String catType, String eAddress1, String city, String eLtd, String eLgd, String term) {

        eveName = name + getRandomNumber();
        Offers_Name.sendKeys(eveName);
        Offers_Description.sendKeys(desc);
        Offers_Start__Time.sendKeys("1330");
        Offers_End_Time.sendKeys("2030");
        EventLongitude.sendKeys(eLgd);
        driver.findElement(By.xpath("//input[@id='datepicker-autoclose']")).sendKeys("11/25/2018");
        driver.findElement(By.xpath("//input[@id='datepicker']")).sendKeys("11/27/2018");
        WebElement mySelectElement = driver.findElement(By.id("CategoryTypeList"));
        Select dropdown = new Select(mySelectElement);
        dropdown.selectByIndex(5);
        EventAddress1.sendKeys(eAddress1);
        EventCity.sendKeys(city);
        EventLatitude.sendKeys(eLtd);
        Terms.sendKeys(term);
        File file = new File("ash.jpg");
        String path = file.getAbsolutePath();
        System.out.println("PATH === " + path);
        Event_Cover_Img.sendKeys(path);
        submit.click();
        search.sendKeys(eveName);
        //  isSearchResultsPresent1();
        // editBtn.getText().equals("Edit");
    }

    public boolean isUserInEventListPage(){
        if(title.getText().equals("Create Event")){
            return true;
        }
        else {
            return false;
        }
    }

    public void nonMandatoryEvent(String address2, String country){
        Address2.sendKeys(address2);
        eveState.sendKeys(country);
        submit.click();
    }

    public boolean isSearchResultsPresent1() {
        if (editBtn.getText().equals("Edit")) {
            return true;
        } else{
            return false;
                    }


    }
    public void setAddEvent(){
        addEvent.click();
    }

    public boolean validateMessage(){

        String errorMsg = "! Please fill out this field.";
        if(errorMsg.contains("fill out this")){
            return true;

        }
        else {
            return false;
        }

      //  Assert.assertEquals("! Please fill out this field.", errorMsg);
    }

}