*** Settings ***
Documentation    Checkout test functionality
Force Tags    regression    checkout
Resource    ../Root.txt

*** Test Cases ***
Verify Removing Item At Checkout
    [Documentation]    Validates the remove item at Checkout page functionality
    ...    NOTE: This test also utilizes REST API to demonstrate how we can save time calling an API key
    ...    rather than having to fill out location and place pizza order through UI.
    ...    Focus here is on testing the UI functionality of Checkout here, so it would be optimal + time efficient to use the API
    [Tags]    remove_item    sanity
    Open Browser And Load Page
    Click Nav Menu Button
    REST Prepare To Place Order With Default Payload
    Click Checkout Button
    ${UpsellContainer_Display}=    Validate If Upsell Container Is Visible
    Run Keyword If    ${UpsellContainer_Display}
    # Add loading spinner wait keyword
    ${CurrNumOfItems}=    Get Number Of Items In Your Cart
    Click On Remove Item By Position
    # Add loading spinner wait keyword
    ${UpdatedNumOfItems}=    Get Number Of Items In Your Cart
    Should Be True    ${UpdatedNumOfItems} == ${CurrNumOfItems}-1