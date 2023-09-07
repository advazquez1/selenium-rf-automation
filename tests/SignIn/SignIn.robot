*** Settings ***
Documentation    Sign In Modal test functionality
Force Tags    regression    sign_in
Resource    ../Root.txt

*** Test Cases ***
Verify Functionality For Invalid Login
    [Documentation]    Tests the following invalid use cases
    ...    Missing email, missing password, invalid email, invalid password
    [Tags]    invalid_login    sanity
    ${InvalidPassword}=    Generate Random String    8
    ${InvalidEmail}=    Set Variable    ${InvalidPassword}@gmail.com
    # Case 1: Missing email
    Open Browser And Load Page
    Click Nav Sign In Button
    Fill Email And Password And Click Sign In    ${EMPTY}    ${InvalidPassword}
    Wait Until Element Is Visible    ${SignIn_EmailError}    5

    # Case 2: Missing password
    Fill Email And Password And Click Sign In    ${InvalidEmail}    ${EMPTY}
    Wait Until Element Is Visible    ${SignIn_PasswordError}    5

    # Case 3: Invalid email / password combination
    Fill Email And Password And Click Sign In    ${InvalidEmail}    ${InvalidPassword}
    Wait Until Element Is Visible    ${SignIn_Attention_Modal}    5