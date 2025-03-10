*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${URL}    https://Kompas.com
${Email}    geo12619@gmail.com
${Password}    Naxuta123

*** Keywords ***
Go to Kompas
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    # Sleep    20s  # Menahan browser tetap terbuka selama 10 detik

Login User
    Click Element    id=sso__icon__login_top
    Click Element    xpath=//span[text()='Login']


    
*** Test Cases ***
Kompas Index
     Go to Kompas