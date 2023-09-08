*** Settings ***
Documentation    Generic Upsell container page functionality
Resource    ../Root_Common.txt

*** Variables ***
${Upsell_Container}=        //*[@data-quid='generic-card-overlay']
${Upsell_NoThanks_Btn}=     //*[@data-quid='overlay-no-thanks']

*** Keywords ***
Validate If Upsell Container Is Visible
    [Documentation]    Checks to see if the upsell container popup is visible
    ${Upsell_Container_Visible}=    Run Keyword And Return Status    Wait Until Keyword Succeeds    5    1s    Element Should Be Visible    ${Upsell_Container}
    [Return]    ${Upsell_Container_Visible}

Click No Go To Checkout Button
    [Documentation]    Clicks on the No, go to checkout button
    Wait Until Keyword Succeeds    5    1s    Element Should Be Visible    ${Upsell_NoThanks_Btn}
    Click Element    ${Upsell_NoThanks_Btn}
    Wait Until Keyword Succeeds    5    1s    Element Should Not Be Visible    ${Upsell_Container}