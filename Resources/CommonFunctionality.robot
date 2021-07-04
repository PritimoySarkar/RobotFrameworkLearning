*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://dont-nod.com/en
${browser}  chrome

*** Keywords ***
Start Browser
    Open Browser  ${url}  ${browser}
    click link  //a[@id='cn-accept-cookie']
    maximize browser window

Quit Browser
    Close Browser