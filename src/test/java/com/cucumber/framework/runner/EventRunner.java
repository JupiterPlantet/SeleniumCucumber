package com.cucumber.framework.runner;


import cucumber.api.CucumberOptions;
import cucumber.api.testng.AbstractTestNGCucumberTests;

@CucumberOptions(features = { "classpath:featurefile/Event.feature" },
        glue = {"classpath:com.cucumber.framework.stepdefinition",
        "classpath:com.cucumber.framework.helper" }, plugin = { "pretty",
        "json:target/Category.json" })

public class EventRunner extends AbstractTestNGCucumberTests {

}
