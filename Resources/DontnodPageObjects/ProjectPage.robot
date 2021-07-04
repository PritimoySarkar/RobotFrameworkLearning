*** Settings ***
Library  SeleniumLibrary
Library    Collections

*** Variables ***
@{PROJECTS}  Tell Me Why  Life is Strange 2  Twin Mirror  Captain Spirit  Vampyr  Life is strange  Remember Me

*** Keywords ***
Check all projects
    FOR  ${project}  IN  @{PROJECTS}
        mouse over  //h1[text()='${project}']/parent::div
        sleep  1s
        capture element screenshot  //h1[text()='${project}']/parent::div
    END