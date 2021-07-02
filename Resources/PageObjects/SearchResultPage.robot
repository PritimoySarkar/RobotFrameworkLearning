*** Settings ***
Library  SeleniumLibrary
Resource  ./HeaderPage.robot

*** Variables ***
${search_result}  results for

*** Keywords ***
Verify Search Results
    [Arguments]  ${search_text}
    page should contain  ${search_result} ${search_text}

Select Product Condition


Select delivery Options