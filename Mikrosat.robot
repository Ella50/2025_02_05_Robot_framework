*** Settings ***
Library           Selenium2Library

*** Test Cases ***
Registration
    Open Browser    https://www.mikrosat.hu/    firefox
    Maximize Browser Window
    Click Element    //*[@id="profile__btn"]/span
    Click Element    //*[@id="container"]/header/div/div/div[2]/div/div[2]/div[3]/div/div[2]/div[2]/div[1]/a
    Input Text    //*[@id="emai"]    atkari.ariella@diak.szbi-pg.hu
    Input Password    //*[@id="passwd1"]    J9kKZApe
    Input Password    //*[@id="passwd2"]    J9kKZApe
    Click Element    //*[@id="div_out_company_choose"]/div/div[2]/label
    Input Text    //*[@id="kap_mobile_sub"]    308562046
    Input Text    //*[@id="default_nev"]    Atkári Ariella
    Input Text    //*[@id="default_irany"]    6100
    Input Text    //*[@id="default_varos"]    Kiskunfélegyháza
    Input Text    //*[@id="default_utca"]    Kossuth, 24
    Set Focus To Element    //*[@id="button_reg"]
    Click Element    //*[@id="shipping_same"]
    Click Button    //*[@id="button_reg"]
    Close Browser

Login
    Open Browser    https://www.mikrosat.hu/    firefox
    Click Element    //*[@id="profile__btn"]/span
    Input Text    //*[@id="shop_user_login"]    atkari.ariella@diak.szbi-pg.hu
    Input Password    //*[@id="shop_pass_login"]    J9kKZApe
    Click Button    //*[@id="container"]/header/div/div/div[2]/div/div[2]/div[3]/div/div[2]/form/div[1]/button
    Close Browser
