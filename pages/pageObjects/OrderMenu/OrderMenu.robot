*** Settings ***
Documentation    Sign In Modal functionality
Resource    ../Root.txt

*** Variables ***
${OrderMenu_StartOrder_Header}=        //*[@data-quid='entrees-category-title']
${OrderMenu_Checkout_Btn}=             //*[@data-quid='order-checkout-button']

*** Keywords ***
Click Checkout Button
    [Documentation]    Clicks on the Checkout button in the Order Menu page
    Wait Until Keyword Succeeds    5    1s    Element Should Be Visible    ${OrderMenu_Checkout_Btn}
    Click Element    ${OrderMenu_Checkout_Btn}