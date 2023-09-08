*** Settings ***
Documentation    REST services keyword functionality
Resource    ../../pageObjects/Root_Common.txt
Resource    ../../pageObjects/Root.txt

*** Keywords ***
REST Prepare To Place Order With Default Payload
    [Documentation]    POST rest api key to pre-populate a typical order at a default location
    ...    Can find details of the type of order and location in ValidateOrderPayload.json
    ${cookies}=    Get Cookies
    ${request_headers}=    Create Dictionary    cookies=${cookies}
    ${json_data}=    Get File    ${CURDIR}/../jsonData/ValidateOrderPayload.json
    ${response}=    POST    url=https://order.dominos.com/power/validate-order    headers=${request_headers}    data=${json_data}
    Sleep    3s    # Gives ample time to send out POST request
    Reload Page
    Wait Until Keyword Succeeds    5    1    Element Should Be Visible    ${NavMenu_Logo}
    [Return]    ${response.json()}