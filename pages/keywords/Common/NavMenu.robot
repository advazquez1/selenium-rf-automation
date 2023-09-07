*** Settings ***
Documentation    Top navigation menu page functionality
Resource    ../Root_Common.txt

*** Variables ***
${NavMenu_Logo}=              //*[contains(@aria-labelledby, 'dominos-logo')]
${NavMenu_SignIn_Btn}=        //*[@data-quid='nav-sign-in-button']

*** Keywords ***
Click Nav Menu Logo
    [Documentation]    Clicks on the navigation menu logo
    Wait Until Keyword Succeeds    5    1s    Element Should Be Visible    ${NavMenu_Logo}
    Click Element    ${NavMenu_Logo}
    Wait Until Keyword Succeeds    5    1s    Element Should Be Visible    ${SmartOrder_StartYourOrder_Txt}

Click Nav Sign In Button
    [Documentation]    Clicks on the navigation menu Sign In & Earn Rewards button
    Wait Until Keyword Succeeds    5    1s    Element Should Be Visible    ${NavMenu_SignIn_Btn}
    Click Element    ${NavMenu_SignIn_Btn}
    Wait Until Keyword Succeeds    5    1s    Element Should Be Visible    ${SignIn_Modal}