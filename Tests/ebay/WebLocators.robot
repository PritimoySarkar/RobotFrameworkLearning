*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC to demonstrate weblocators in Robot FW
    [Documentation]  This is a sample test case to test web locators

    Open Browser  https://www.ebay.com  chrome
    maximize browser window
    click link  link:Daily Deals
    click link  partiallink:Polic
    sleep  4s
    close browser