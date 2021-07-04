*** Settings ***
Library  SeleniumLibrary

*** Variable ***
${search_result}  mobile

*** Keywords ***
Verify Test Cases
    input text  //*[@id="gh-ac"]  ${search result}
    press keys  //*[@id="gh-btn"]  [Return]
    page should contain  results for mobile

Filter results by condition
    click element  //span[text()='Condition']
    #click element  //*[@id="s0-14-11-5-2[0]"]/div[2]/div[2]/span[1]
    click element  //*[@id="s0-14-11-5-2[0]-53[1]-9-content-menu"]/a[2]/span

Verify filter results
    element should contain  //*[@id="s0-14-11-6-3-query_answer1-answer-2-1-0-list"]/li[1]/div/a/div  New