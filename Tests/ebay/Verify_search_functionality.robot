*** Settings ***
Documentation  Basic Search Functionality
Resource  ../../Resources/PageObjects/HeaderPage.robot
Resource  ../../Resources/PageObjects/SearchResultPage.robot
Resource  ../../Resources/CommonFunctionality.robot
#Resource  ../../Resources/eBay_UserDefinedKeywords.robot

Test Setup  Start Browser
Test Teardown  Quit Browser
*** Variables ***

*** Test Cases ***
Verify basic search functionality
    [Documentation]  This test case wverifies the basic search
    [Tags]  Functional

    HeaderPage.Input Search Text and Click Search  robot
    SearchResultPage.Verify Search Results  robot

#Verify basic search functionality2
#    [Documentation]  This test case wverifies the basic search
#    [Tags]  Functional
#
#    HeaderPage.Input Search Text and Click Search  mobile
#    SearchResultPage.Verify Search Results  mobile
#
#Verify basic search functionality3
#    [Documentation]  This test case wverifies the basic search
#    [Tags]  Functional
#
#    HeaderPage.Input Search Text and Click Search  travel
#    SearchResultPage.Verify Search Results  travel