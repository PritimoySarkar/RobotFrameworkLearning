*** Settings ***
Library  SeleniumLibrary
Library    Collections
#Library    RPA.Tasks
Resource  ./ProjectPage.robot
Resource  ./StudioPage.robot

*** Variables ***
@{MENU_ELEMENTS}
&{MENU_ITEMS}

*** Keywords ***
Fetch Menu Items
    @{temp}  get webelements  //li[starts-with(@id,"menu-item")]/a
    Set Suite Variable  @{MENU_ELEMENTS}  @{temp}
    Log  ${MENU_ITEMS}
    FOR    ${item}    IN    @{MENU_ELEMENTS}
        mouse over  ${item}
        sleep  1s
        click element  ${item}  ctrl
        @{windows}  get window handles
        switch window  ${windows}[1]
        sleep  2s
        ${url}  get location
        #run keyword if  'project' in '${url}'  Check all projects
        run keyword if  'studio' in '${url}'  Check Studio History
        close window
        switch window  ${windows}[0]
        sleep  1s
    END


Open Projects
    log  ${MENU_ITEMS}
    go back