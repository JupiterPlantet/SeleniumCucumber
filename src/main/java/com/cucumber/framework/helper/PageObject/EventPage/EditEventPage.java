package com.cucumber.framework.helper.PageObject.EventPage;

import com.cucumber.framework.helper.Logger.LoggerHelper;
import com.cucumber.framework.helper.PageObject.PageBase;
import org.apache.log4j.Logger;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

import javax.xml.ws.FaultAction;
import java.io.File;

public class EditEventPage extends PageBase {
    private WebDriver driver;
    private final Logger log = LoggerHelper.getLogger(CreateEvent.class);
    private String eveName;

    public EditEventPage(WebDriver driver) {
        super(driver);
        this.driver= driver;
    }

    @FindBy (how = How.CLASS_NAME, using ="page-title")
    public WebElement titile;

    @FindBy(how = How.CLASS_NAME, using = "btn btn-success waves-effect waves-light")
    public WebElement EventsList;

    @FindBy(how = How.NAME, using = "Offers_Start__Time")
    public WebElement EventStartTime;

    @FindBy(how = How.NAME, using = "Offers_End_Time")
    public WebElement EventEndTime;

    @FindBy(how = How.NAME, using = "Terms")
    public WebElement Terms;

    @FindBy(how = How.XPATH, using = "//button[@type='submit']")
    public WebElement submit;

    @FindBy(how = How.ID, using = "Event_Cover_Img_Edit")
    public WebElement Event_Cover_Img_Edit;

    @FindBy(how = How.ID, using = "datepicker-autoclose")
    public WebElement EventStartDate;

    @FindBy(how=How.XPATH, using = "//input[@type='search']")
    public WebElement SearchField;

    @FindBy(how =How.XPATH, using = "//a[@class='on-default edit-row']")
    public WebElement EditBtn;

    @FindBy(how =How.XPATH, using = "//td[@class='sorting_1']")
    public WebElement eventName;





    public boolean isEditEventPresent(){
        if(titile.getText().equals("Edit Event")){
            return true;
        }
        else {
            return false;
        }
    }

    public void createEditEvent( String eSD, String eST, String eET){
        EventStartDate.sendKeys(eSD);
        EventStartTime.sendKeys(eST);
        EventEndTime.sendKeys(eET);
        Terms.sendKeys("apply");
        File file = new File("ash.jpg");
        String path = file.getAbsolutePath();
        System.out.println("PATH === " + path);
        Event_Cover_Img_Edit.sendKeys(path);
        submit.click();

    }




}
