package com.cucumber.framework.helper.PageObject.createcategorypage;

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

public class CreateCategoryPage extends PageBase {

	private WebDriver driver;
	private final Logger log = LoggerHelper.getLogger(CreateCategoryPage.class);
	private String catName;

	public CreateCategoryPage(WebDriver driver) {
		super(driver);
		this.driver = driver;
	}


	@FindBy(how= How.CLASS_NAME,using="page-title")
	public WebElement title;
	@FindBy(how= How.ID,using="SerCat_Name")
	public WebElement SerCat_Name;
	@FindBy(how= How.ID,using="SerCat_Description")
	public WebElement SerCat_Description;
	@FindBy(how= How.ID,using="SerCat_Image")
	public WebElement SerCat_Image;

	@FindBy(how= How.ID,using="SerCat_Video")
	public WebElement SerCat_Video;

	@FindBy(how= How.ID,using="SerCat_Cover_Image")
	public WebElement SerCat_Cover_Image;

	@FindBy(how=How.XPATH,using = "//input[@type='search']")
	public WebElement SearchField;

	@FindBy(how=How.XPATH,using = "//a[@class='on-default edit-row']")
	public WebElement Edit;

	
	public boolean isUserInCreateCategoryPage(){
		if(title.getText().equals("Create Category")){
			return true;
		}
		else {
			return false;
		}
	}

	public void createCategoryWith(String name, String desc){

		catName = name+ getRandomNumber();
		SerCat_Name.sendKeys(catName);
		SerCat_Description.sendKeys(desc);
		File file = new File("ash.jpg");
		String path = file.getAbsolutePath();
		System.out.println("PATH === "+path);
		SerCat_Image.sendKeys(path);
		SerCat_Cover_Image.sendKeys(path);
		SerCat_Video.sendKeys("https://www.youtube.com/watch?v=nZhLM-FeV9A");
		driver.findElement(By.xpath("//button[@type='submit']")).click();


	}

	public void searchCategory(){
		SearchField.sendKeys(catName);





	}
	public boolean isSearchResultsPresent() {

		SearchField.sendKeys(catName);

		if (Edit.getText().equals("Edit")) {
			return true;
		} else {
			return false;
		}
	}



}
