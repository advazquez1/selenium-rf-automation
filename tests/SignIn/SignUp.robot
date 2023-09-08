*** Settings ***
Documentation    Sign Up test functionality
Force Tags    regression    sign_up
Resource    ../Root.txt

*** Test Cases ***
Verify Functionality For Invalid Sign Up Fields
    [Documentation]    Tests the following invalid use cases in the Join Now sign up page
    ...    Missing required fields, invalid fields, email/password mismatch
    [Tags]    invalid_enrollment
    ${FirstName}=    Generate Random String    8    [LETTERS]
    ${LastName}=    Generate Random String    8    [LETTERS]
    ${Phone}=    Generate Random String    10    [NUMBERS]
    ${InvalidPassword}=    Generate Random String    8
    ${InvalidEmail}=    Set Variable    ${InvalidPassword}@gmail.com
    &{SignUpFields}=    Create Dictionary    firstName=${FirstName}    lastName=${LastName}    email=${InvalidEmail}
    ...    confirmEmail=${InvalidEmail}    phone=${Phone}    password=${InvalidPassword}    confirmPassword=${InvalidPassword}
    # Case 1: Missing first name
    Open Browser And Load Page
    Click Nav Sign In Button
    Click Join Now Button
    Wait Until Keyword Succeeds    5    0.5s    Element Should Be Visible    ${SignUp_RewardsBanner_Title}
    Fill Out Sign Up Form    lastName=${LastName}    email=${InvalidEmail}
    ...    confirmEmail=${InvalidEmail}    phone=${Phone}    password=${InvalidPassword}    confirmPassword=${InvalidPassword}
    Click Sign Up Submit Button
    # assert
    # Case 2: Missing last name
    Fill Out Sign Up Form    firstName=${FirstName}    email=${InvalidEmail}
    ...    confirmEmail=${InvalidEmail}    phone=${Phone}    password=${InvalidPassword}    confirmPassword=${InvalidPassword}
    Click Sign Up Submit Button
    # assert
    # Case 3: Missing email
    Fill Out Sign Up Form    firstName=${FirstName}    lastName=${LastName}
    ...    confirmEmail=${InvalidEmail}    phone=${Phone}    password=${InvalidPassword}    confirmPassword=${InvalidPassword}
    Click Sign Up Submit Button
    # assert
    # Case 4: Missing confirm email
    Fill Out Sign Up Form    firstName=${FirstName}    lastName=${LastName}    email=${InvalidEmail}
    ...    phone=${Phone}    password=${InvalidPassword}    confirmPassword=${InvalidPassword}
    Click Sign Up Submit Button
    # assert
    # Case 5: Missing phone number
    Fill Out Sign Up Form    firstName=${FirstName}    lastName=${LastName}    email=${InvalidEmail}
    ...    confirmEmail=${InvalidEmail}    password=${InvalidPassword}    confirmPassword=${InvalidPassword}
    Click Sign Up Submit Button
    # assert
    # Case 6: Missing password
    Fill Out Sign Up Form    firstName=${FirstName}    lastName=${LastName}    email=${InvalidEmail}
    ...    confirmEmail=${InvalidEmail}    phone=${Phone}    confirmPassword=${InvalidPassword}
    Click Sign Up Submit Button
    # assert
    # Case 7: Missing confirm password
    Fill Out Sign Up Form    firstName=${FirstName}    lastName=${LastName}    email=${InvalidEmail}
    ...    confirmEmail=${InvalidEmail}    phone=${Phone}    password=${InvalidPassword}
    Click Sign Up Submit Button
    # assert