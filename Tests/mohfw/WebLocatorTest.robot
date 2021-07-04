*** Settings ***
Library  SeleniumLibrary

Test Setup  Open Browser  https://www.mohfw.gov.in  chrome
Test Teardown  close browser

*** Test Cases ***
TC to demonstrate weblocators in Robot FW
    [Documentation]  This is a sample test case to test web locators

    maximize browser window
    click link  partiallink:Vaccine
    click link  link:FAQs
    sleep  4s