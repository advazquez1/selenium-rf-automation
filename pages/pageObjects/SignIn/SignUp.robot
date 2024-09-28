*** Settings ***
Documentation    Sign Up page functionality
Resource    ../Root.txt

*** Variables ***
${SignUp_RewardsBanner_Title}=        //*[contains(@class, 'loyalty-rewards-with-info-banner')]
${SignUp_FirstName_Input}=            //*[@data-quid='signup-form-nameFirst']
${SignUp_LastName_Input}=             //*[@data-quid='signup-form-nameLast']
${SignUp_Email_Input}=                //*[@data-quid='signup-form-email']
${SignUp_EmailConfirm_Input}=         //*[@data-quid='signup-form-emailConfirm']
${SignUp_Phone_Input}=                //*[@data-quid='signup-form-phone']
${SignUp_Password_Input}=             //*[@data-quid='signup-form-password']
${SignUp_PasswordConfirm_Input}=      //*[@data-quid='signup-form-passwordConfirm']
${SignUp_Submit_Btn}=                 //*[@data-quid='signup-form-submit']

*** Keywords ***
Input First Name In Sign Up Form
    [Documentation]    Clears the first name field and inputs given arg
    [Arguments]    ${firstName}=
    Wait Until Keyword Succeeds    5    1    Element Should Be Visible    ${SignUp_FirstName_Input}
    Clear Element Text    ${SignUp_FirstName_Input}
    Input Text    ${SignUp_FirstName_Input}    ${firstName}

Input Last Name In Sign Up Form
    [Documentation]    Clears the last name field and inputs given arg
    [Arguments]    ${lastName}=
    Wait Until Keyword Succeeds    5    1    Element Should Be Visible    ${SignUp_LastName_Input}
    Clear Element Text    ${SignUp_LastName_Input}
    Input Text    ${SignUp_LastName_Input}    ${lastName}

Input Email In Sign Up Form
    [Documentation]    Clears the email address field and inputs given arg
    [Arguments]    ${email}=
    Wait Until Keyword Succeeds    5    1    Element Should Be Visible    ${SignUp_Email_Input}
    Clear Element Text    ${SignUp_Email_Input}
    Input Text    ${SignUp_Email_Input}    ${email}

Input Confirm Email In Sign Up Form
    [Documentation]    Clears the confirm email address field and inputs given arg
    [Arguments]    ${emailConfirm}=
    Wait Until Keyword Succeeds    5    1    Element Should Be Visible    ${SignUp_EmailConfirm_Input}
    Clear Element Text    ${SignUp_EmailConfirm_Input}
    Input Text    ${SignUp_EmailConfirm_Input}    ${emailConfirm}

Input Phone In Sign Up Form
    [Documentation]    Clears the phone number field and inputs given arg
    [Arguments]    ${phone}=
    Wait Until Keyword Succeeds    5    1    Element Should Be Visible    ${SignUp_Phone_Input}
    Clear Element Text    ${SignUp_Phone_Input}
    Input Text    ${SignUp_Phone_Input}    ${phone}

Input Password Sign Up Form
    [Documentation]    Clears the password field and inputs given arg
    [Arguments]    ${password}=
    Wait Until Keyword Succeeds    5    1    Element Should Be Visible    ${SignUp_Password_Input}
    Clear Element Text    ${SignUp_Password_Input}
    Input Text    ${SignUp_Password_Input}    ${password}

Input Confirm Password Sign Up Form
    [Documentation]    Clears the confirm password field and inputs given arg
    [Arguments]    ${passwordConfirm}=
    Wait Until Keyword Succeeds    5    1    Element Should Be Visible    ${SignUp_PasswordConfirm_Input}
    Clear Element Text    ${SignUp_PasswordConfirm_Input}
    Input Text    ${SignUp_PasswordConfirm_Input}    ${passwordConfirm}

Fill Out Sign Up Form
    [Documentation]    Fills out the entire sign up form
    [Arguments]    ${firstName}=    ${lastName}=    ${email}=    ${confirmEmail}=    ${phone}=    ${password}=    ${confirmPassword}=
    Input First Name In Sign Up Form    ${firstName}
    Input Last Name In Sign Up Form    ${lastName}
    Input Email In Sign Up Form    ${email}
    Input Confirm Email In Sign Up Form    ${confirmEmail}
    Input Phone In Sign Up Form    ${phone}
    Input Password Sign Up Form    ${password}
    Input Confirm Password Sign Up Form    ${confirmPassword}

Click Sign Up Submit Button
    [Documentation]    Clicks on the `Join Now` submit button
    Wait Until Keyword Succeeds    5    1    Element Should Be Visible    ${SignUp_Submit_Btn}
    Click Element    ${SignUp_Submit_Btn}