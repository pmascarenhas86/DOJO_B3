*** Settings ***
Library           SeleniumLibrary
Test Teardown    Close All Browsers
*** Variables ***
${URL}            https://www.saucedemo.com
${USERNAME}       standard_user
${PASSWORD}       secret_sauce

*** Test Cases ***
Login com credenciais validas
    [Tags]    Sucesso
    Open Browser    ${URL}    chrome
    Input Text      user-name    ${USERNAME}
    Input Password  password    ${PASSWORD}
    Click Button    login-button
    Sleep           2s


Login com usuario bloqueado
    [Tags]    Falha
    Open Browser    ${URL}    chrome
    Input Text      user-name    locked_out_user
    Input Password  password    ${PASSWORD}
    Click Button    login-button
    Page Should Contain   Epic sadface: Sorry, this user has been locked out.


Login com usuario lento
    [Tags]    Falha    Performance
    Open Browser    ${URL}    chrome
    Input Text      user-name    performance_glitch_user
    Input Password  password    ${PASSWORD}
    Click Button    login-button
    Wait Until Element Is Visible    xpath://select[@class='shopping_cart_link']    timeout=500ms

