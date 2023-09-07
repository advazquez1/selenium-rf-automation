*** Settings ***
Documentation    Dashboard test functionality
Force Tags    regression    dashboard
Resource    ../Root.txt

*** Test Cases ***
Verify Smart Order Homepage Functionality
    [Documentation]    Verifies the functionality of the smart order: delivery and carryout buttons
    [Tags]    smart_order
    Open Browser    https://www.dominos.com/    Chrome
    # Case 2: Delivery
    Click Smart Order Button    Delivery
    Wait Until Keyword Succeeds    5    0.5s    Element Should Be Visible    ${StoreLocator_Header}
    ${Delivery_Btn_Highlight}=    Get Element Attribute    ${StoreLocator_Delivery}    aria-selected
    ${Carryout_Btn_Highlight}=    Get Element Attribute    ${StoreLocator_Carryout}    aria-selected
    Should Be Equal As Strings    ${Delivery_Btn_Highlight}    true
    Should Be Equal As Strings    ${Carryout_Btn_Highlight}    false
    # Case 2: Carryout
    Click Nav Menu Logo
    Click Smart Order Button    Carryout
    Wait Until Keyword Succeeds    5    0.5s    Element Should Be Visible    ${StoreLocator_Header}
    ${Delivery_Btn_Highlight}=    Get Element Attribute    ${StoreLocator_Delivery}    aria-selected
    ${Carryout_Btn_Highlight}=    Get Element Attribute    ${StoreLocator_Carryout}    aria-selected
    Should Be Equal As Strings    ${Delivery_Btn_Highlight}    false
    Should Be Equal As Strings    ${Carryout_Btn_Highlight}    true