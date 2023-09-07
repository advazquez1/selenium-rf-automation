*** Settings ***
Documentation    Dashboard page functionality
Resource    ../Root.txt

*** Variables ***
${SmartOrder_Delivery_Btn}=             //*[@data-quid='start-your-order-delivery-cta']
${SmartOrder_Carryout_Btn}=             //*[@data-quid='start-your-order-carryout-cta']
${SmartOrder_StartYourOrder_Txt}=       //*[text()='Start Your Order']

*** Keywords ***
Click Smart Order Button
    [Documentation]    Clicks the smart order button
    ...    Options are: Delivery | Carryout
    [Arguments]    ${Option}
    ${CTA_Locator}=    Run Keyword If    '${option}' == 'Delivery'    Set Variable    ${SmartOrder_Delivery_Btn}
    ...    ELSE IF   '${option}' == 'Carryout'    Set Variable    ${SmartOrder_Carryout_Btn}
    ...    ELSE    Fail    Valid option wasn't provided
    Wait Until Keyword Succeeds    5    1    Element Should Be Visible    ${CTA_Locator}
    Click Element    ${CTA_Locator}