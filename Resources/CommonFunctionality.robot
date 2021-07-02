*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.ebay.com
${browser}  chrome

*** Keywords ***
Start Browser
    Open Browser  ${url}  ${browser}
    maximize browser window

Quit Browser
    Close Browser