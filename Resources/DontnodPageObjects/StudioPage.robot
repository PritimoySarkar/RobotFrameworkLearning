*** Settings ***
Library  SeleniumLibrary
Library    Collections

*** Variables ***
&{timeline}  2008=Studio founded  2011=contract with Capcom  2012=Remember Me officially presented  2013=Project WHAT IF  2014=contract with Square Enix
             ...  2015=Life Is Strange Episode 1: Chrysalis released  2016=Life Is Strange standard and limited editions released  2017=contract with BANDAI NAMCO
             ...  2018=Vampyr releases on PS4  2019=Episode 2 of Life is Strange 2 releases  2020=release dates of Tell Me Why have been revealed

*** Keywords ***
Check Studio History
    scroll element into view  //div[@class='visuals tl']/div/img
    wait until element is visible  //div[@class='visuals tl']/div/img     timeout=5s
    Set Focus To Element  //div[@class='visuals tl']/div/img
    mouse over  //div[@class='visuals tl']/div/img
    @{years}  get webelements  //div[@class='dates']/ul/li/p
    FOR  ${year}  IN  @{years}
        mouse over  ${year}
        sleep  1s
    END
    log  ${timeline}
