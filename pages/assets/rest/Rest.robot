*** Settings ***
Documentation    REST services keyword functionality
Resource    ../../keywords/Root_Common.txt
Resource    ../../keywords/Root.txt

*** Keywords ***
REST Prepare To Place Order With Default Payload
    [Documentation]    ...
    Open Browser And Load Page
    ${cookies}=    Get Cookies
    ${request_headers}=    Create Dictionary    cookies=${cookies}
    ${json_data}=    Get File    ${CURDIR}/../jsonData/ValidateOrderPayload.json
    Post    url=https://order.dominos.com/power/validate-order    headers=${request_headers}    data=${json_data}
    Go To    https://www.dominos.com/en/pages/order/#!/section/Food/category/AllEntrees/
    sleep    5s