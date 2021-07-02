*** Settings ***
Library  SeleniumLibrary
Variables  ../WebElements.py

*** Variables ***
${keyword}  b
${search_text}  mobile
@{search_text_list}  books  travel  gifts
&{search_text_dict}  b=books   t=travel  m=mobile

*** Keywords ***
Input Search Text and Click Search
    [Arguments]  ${search_text}
    input text  ${HomePageSearchTextBox}  ${search_text}
    press keys  ${HomePageSearchButton}  [Return]

Click on Advanced Search Link
    click element  ${HomePageAdvancedSearchLink}

Search for another text
    input text  //*[@id="gh-ac"]  ${search_text}