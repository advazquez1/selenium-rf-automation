*** Settings ***
Documentation    Keywords for setting up page
Resource    ../Root_Common.txt
Resource    NavMenu.robot

*** Variables ***
${BROWSER}=    Chrome

*** Keywords ***
Open Browser And Load Page
    [Documentation]    Opens up the browser to the landing page
    [Arguments]    ${Browser}=${BROWSER}
    Open Browser    https://www.dominos.com/    ${Browser}
    Wait Until Keyword Succeeds    5    0.5s    Element Should Be Visible    ${NavMenu_Logo}