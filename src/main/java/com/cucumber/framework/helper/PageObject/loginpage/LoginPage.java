package com.cucumber.framework.helper.PageObject.loginpage;

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

public class LoginPage extends PageBase {

	private WebDriver driver;
	private final Logger log = LoggerHelper.getLogger(LoginPage.class);

	public LoginPage(WebDriver driver) {
		super(driver);
		this.driver = driver;
	}
	
	/** Web Elements */
	
	@FindBy(how=How.XPATH,using="//div[@id='main-nav']//a[text()='Laptops']")
	public WebElement laptops;

	@FindBy(how=How.ID,using="Email")
	public WebElement username;

	@FindBy(how=How.ID,using="password")
	public WebElement password;

	@FindBy(how=How.XPATH,using="//*[@id='formContent']/form/input[4]")
	public WebElement loginButton;

	
	/** Protected Methods **/
	
	/*protected String getBrandXpath(String name){
		log.debug(name);
		return "//div[@id='facetFilterOptions']//label[contains(.,'" + name + "')]";
	}*/
	
	protected String getPriceXpath(String price){
		log.debug(price);
		return "//div[@id='facetFilterOptions']//label[contains(.,'" + price + "')]";
	}

	
	/** Public Methods  **/
	
	public WebDriver getDriver() {
		return this.driver;
	}
	

	public void loginAsAdmin() {
		log.info("Logging into to admin panel with "+ ObjectRepo.reader.getUserName()+" password "+ ObjectRepo.reader.getPassword());
		username.sendKeys(ObjectRepo.reader.getUserName());
		password.sendKeys(ObjectRepo.reader.getPassword());
		ButtonHelper buttonHelper = new ButtonHelper(driver);
		buttonHelper.click(loginButton);
		//waitForElement(driver.findElement(By.className("page-title")),30);
//		driver.findElement(By.xpath((itemName, shortDesp))).click();
//		waitForElement(reserve, ObjectRepo.reader.getExplicitWait());
//		reserve.click();

	}



//	public void search(String searchStr) {
//		searchTxtBox.sendKeys(searchStr);
//		searchBtn.click();
//		log.info(searchStr);
//	}
//
//	public void navigateTo(String name) {
//		driver.findElement(By.xpath(getMenuLocator(name))).click();
//		log.info(name);
//	}
//
//	public void selectProductOrder(String order){
//		new DropDownHelper(driver).SelectUsingVisibleValue(productSort, order);
//		log.info(order);
//	}
//
//	public String getItems(){
//		return new TextBoxHelper(driver).getText(By.xpath("//span[@class='h4']"));
//	}
//
//	public void selectBrands(String name) {
//		log.info(name);
//		driver.findElement(By.xpath(getBrandXpath(name))).click();
//	}
//
//	public void selectPrice(String price){
//		log.info(price);
//		driver.findElement(By.xpath(getBrandXpath(price))).click();
//	}
//
//	public ItemsBag navigateToCart() {
//		waitForElement(viewShoppingBag, ObjectRepo.reader.getExplicitWait());
//		viewShoppingBag.click();
//		ItemsBag bag = new ItemsBag(driver);
//		waitForElement(bag.reserveYourItem, ObjectRepo.reader.getExplicitWait());
//		log.info("");
//		return bag;
//	}
}
