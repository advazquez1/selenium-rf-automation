*** Settings ***
Documentation    Sign In Modal functionality
Resource    ../Root.txt

*** Variables ***
${SignIn_Modal}=               //*[@data-quid='login-modal']
${SignIn_Email_Input}=         //*[@data-quid='email']
${SignIn_Password_Input}=      //*[@data-quid='password']
${SignIn_SignInOrder_Btn}=     //*[@data-quid='sign-in-button']
${SignIn_EmailError}=          //*[@data-quid='error-Email']
${SignIn_PasswordError}=       //*[@data-quid='error-Password']
${SignIn_Attention_Modal}=     //p[contains(text(), 'could not locate') and contains(text(), 'e-mail and password combination')]

*** Keywords ***
Input Email In Sign In Modal
    [Documentation]    Clears the email field and inputs given arg
    [Arguments]    ${email}=
    Wait Until Keyword Succeeds    5    1    Element Should Be Visible    ${SignIn_Email_Input}
    Clear Element Text    ${SignIn_Email_Input}
    Input Text    ${SignIn_Email_Input}    ${email}

Input Password In Sign In Modal
    [Documentation]    Clears the password field and inputs given arg
    [Arguments]    ${password}=
    Wait Until Keyword Succeeds    5    1    Element Should Be Visible    ${SignIn_Password_Input}
    Clear Element Text    ${SignIn_Password_Input}
    Input Text    ${SignIn_Password_Input}    ${password}

Click Sign In For This Order
    [Documentation]    Clicks on the `Sign In For This Order` button
    Wait Until Keyword Succeeds    5    1    Element Should Be Visible    ${SignIn_SignInOrder_Btn}
    Click Element    ${SignIn_SignInOrder_Btn}

Fill Email And Password And Click Sign In
    [Documentation]    Fills out the email and password and clicks on the `Sign In For This Order` button
    [Arguments]    ${email}=    ${password}=
    Input Email In Sign In Modal    ${email}
    Input Password In Sign In Modal    ${password}
    Click Sign In For This Order