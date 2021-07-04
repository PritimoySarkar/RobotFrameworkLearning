*** Settings ***
Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/DontnodPageObjects/HeaderObject.robot

Test Setup  Start Browser
Test Teardown  Quit Browser

*** Variables ***

*** Test Cases ***
Menu Bar Testing
    [Documentation]  Test if all the hyperlink in the menu bar is working or not
    Fetch Menu Items

#Open Project Page
#    [Documentation]  Open Project Page and check if all the Project is present
#    Open Projects
#    log  ${MENU_ELEMENTS}


*** Keywords ***
