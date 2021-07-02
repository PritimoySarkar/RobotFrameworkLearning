*** Settings ***
Documentation  Basic Search Functionality
Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/eBay_UserDefinedKeywords.robot

Test Setup  Start Browser
Test Teardown  Quit Browser
*** Variables ***

*** Test Cases ***
Varify basic search functionality for eBay
    [documentation]  This test case verifies
    [tags]  Functional

    #Start Browser
    Verify Test Cases
    Filter results by condition
    Verify filter results
    #Quit Browser

