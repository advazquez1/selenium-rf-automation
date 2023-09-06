*** Settings ***
Documentation    Dashboard test functionality
Force Tags    regression    dashboard
Resource    ../Root.txt

*** Test Cases ***
Verify Smart Order Homepage Functionality
    [Documentation]    Verifies the functionality of the smart order: delivery and carryout buttons
    [Tags]    smart_order
    Open Browser    https://www.dominos.com/    Chrome
    Click Smart Order Button    Delivery