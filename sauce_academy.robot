*** Settings ***
Library           Selenium2Library

*** Test Cases ***
Login
    Open Browser    https://www.saucedemo.com/    firefox
    Input Text    //*[@id="user-name"]    standard_user
    Input Password    //*[@id="password"]    secret_sauce
    Click Button    //*[@id="login-button"]
    Close Browser

Empty_username
    Open Browser    https://www.saucedemo.com/    firefox
    Input Text    //*[@id="user-name"]    ${EMPTY}
    Input Password    //*[@id="password"]    secret_sauce
    Click Button    //*[@id="login-button"]
    Element Should Contain    //*[@id="login_button_container"]/div/form/div[3]    Epic sadface: Username is required
    Close Browser

Empty_password
    Open Browser    https://www.saucedemo.com/    firefox
    Input Text    //*[@id="user-name"]    standard_user
    Input Password    //*[@id="password"]    ${EMPTY}
    Click Button    //*[@id="login-button"]
    Element Should Contain    //*[@id="login_button_container"]/div/form/div[3]    Epic sadface: Password is required
    Close Browser

Empty_usern_and_passw
    Open Browser    https://www.saucedemo.com/    firefox
    Input Text    //*[@id="user-name"]    ${EMPTY}
    Input Password    //*[@id="password"]    ${EMPTY}
    Click Button    //*[@id="login-button"]
    Element Should Contain    //*[@id="login_button_container"]/div/form/div[3]    Epic sadface: Username is required
    Close Browser
