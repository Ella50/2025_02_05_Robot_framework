*** Settings ***
Library           Selenium2Library

*** Test Cases ***
Login
    Open Browser    https://keprendeles.optikart.hu/login/    firefox
    Input Text    //*[@id="username-5474"]    Ella
    Input Password    //*[@id="user_password-5474"]    J9kKZApe
    Click Button    //*[@id="um-submit-btn"]
    Page Should Contain    123 456
    Close Browser

Registration
    Open Browser    https://keprendeles.optikart.hu/register/    firefox
    Input Text    //*[@id="user_login-5473"]    Ella
    Input Text    //*[@id="first_name-5473"]    123
    Input Text    //*[@id="last_name-5473"]    456
    Input Password    //*[@id="user_password-5473"]    J9kKZApe
    Input Password    //*[@id="confirm_user_password-5473"]    J9kKZApe
    Click Element    //*[@id="um_field_5473_intezmeny_data"]/div[2]/label[1]
    Click Button    //*[@id="um-submit-btn"]
    Close Browser

Login_empty_username
    Open Browser    https://keprendeles.optikart.hu/login/    firefox
    Input Text    //*[@id="username-5474"]    ${EMPTY}
    Input Password    //*[@id="user_password-5474"]    J9kKZApe
    Click Button    //*[@id="um-submit-btn"]
    Element Should Contain    //*[@id="um-error-for-username-5474"]    Please enter your username or email
    Element Should Contain    //*[@id="um-error-for-user_password-5474"]    Password is incorrect. Please try again.
    Close Browser

Login_empty_password
    Open Browser    https://keprendeles.optikart.hu/login/    firefox
    Input Text    //*[@id="username-5474"]    Ella
    Input Password    //*[@id="user_password-5474"]    ${EMPTY}
    Click Button    //*[@id="um-submit-btn"]
    Element Should Contain    //*[@id="um-error-for-user_password-5474"]    Please enter your password
    Close Browser

login_empty_credentials
    Open Browser    https://keprendeles.optikart.hu/login/    firefox
    Input Text    //*[@id="username-5474"]    ${EMPTY}
    Input Password    //*[@id="user_password-5474"]    ${EMPTY}
    Click Button    //*[@id="um-submit-btn"]
    Element Should Contain    //*[@id="um-error-for-username-5474"]    Please enter your username or email
    Element Should Contain    //*[@id="um-error-for-user_password-5474"]    Please enter your password
    Close Browser

login_wrong_username
    Open Browser    https://keprendeles.optikart.hu/login/    firefox
    Input Text    //*[@id="username-5474"]    Ela
    Input Password    //*[@id="user_password-5474"]    J9kKZApe
    Click Button    //*[@id="um-submit-btn"]
    Element Should Contain    //*[@id="um-error-for-user_password-5474"]    Password is incorrect. Please try again.
    Close Browser
