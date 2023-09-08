*** Settings ***
Documentation    Checkout page functionality
Resource    ../Root.txt

*** Variables ***
${Checkout_Remove_Btn}=        //*[contains(@data-quid, 'remove')]
${Checkout_ItemsInCart}=       //*[contains(@data-quid, 'order-summary-item')]
*** Keywords ***
Click On Remove Item By Position
    [Documentation]    Clicks on the remove link under your order's item quantity by position
    ...    Default set to 1st position
    [Arguments]    ${pos}=1
    Wait Until Keyword Succeeds    5    1s    Element Should Be Visible    (${Checkout_Remove_Btn})[${pos}]
    Click Element    (${Checkout_Remove_Btn})[${pos}]

Get Number Of Items In Your Cart
    [Documentation]    Retrieves the number of items currently in your ordered cart
    Wait Until Keyword Succeeds    5    1s    Element Should Be Visible    ${Checkout_ItemsInCart}
    ${NumOfItems}=    Get Element Count    ${Checkout_ItemsInCart}
    [Return]    ${NumOfItems}