*** Settings ***
Documentation    Top navigation menu page functionality
Resource    ../Root_Common.txt

*** Variables ***
${NavMenu_Logo}=    //*[contains(@aria-labelledby, 'dominos-logo')]

*** Keywords ***
Click Nav Menu Logo
    [Documentation]    Clicks on the navigation menu logo
    Wait Until Keyword Succeeds    5    0.5s    Element Should Be Visible    ${NavMenu_Logo}
    Click Element    ${NavMenu_Logo}
    Wait Until Keyword Succeeds    5    0.5s    Element Should Be Visible    ${SmartOrder_StartYourOrder_Txt}