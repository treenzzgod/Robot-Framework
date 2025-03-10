*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}   chrome
${SELSPEED}  0.0s

*** Test Cases ***
robotframework-testing_selenium
    [Setup]  Run Keywords  Open Browser  https://www.kompas.com/  ${BROWSER}
    ...              AND   Set Selenium Speed  ${SELSPEED}
    # open    https://www.kompas.com/
    click    id=sso__icon__login_top
    click    xpath=//a[@id='txt_signin']/span
    open    https://account.kompas.com/login/a29tcGFz/aHR0cHM6Ly93d3cua29tcGFzLmNvbS8=
    click    id=email
    type    id=email    geo12619@gmail.com
    click    id=password
    type    id=password    Naxuta123
    click    xpath=//input[@value='Login']
    open    https://account.kompas.com/signin
    open    https://account.kompas.com/sukses?cont=aHR0cHM6Ly93d3cua29tcGFzLmNvbS8/bGduX21ldGhvZD1rb21wYXNpZA==
    open    https://www.kompas.com/?lgn_method=kompasid
    click    id=sso__icon__login_top
    click    xpath=//li[@id='sso__item']/a/span/div/div
    open    https://account.kompas.com/home?navsource=aHR0cHM6Ly93d3cua29tcGFzLmNvbS8/bGduX21ldGhvZD1rb21wYXNpZA==
    click    xpath=//button[@type='button']
    click    link=Logout
    click    xpath=//a[@onclick='google.accounts.id.disableAutoSelect(); return true;']
    open    https://account.kompas.com/logout/WWxaT01GSnJPVzVsVnpSM1ltMHhORTR3Um0xTlV6bEdZMnQ0TUdFeVRqRmhhWFJ5WlVSamQxUkliRVpTVlVaVldXdHZNbFJWTVd4YWFrNXhZVE5OTTFVd05WQlRWVEI2Vlc1R1lXRlZlRVJXUm1odlVWUlpNRkZVYUVkVk0yOHdZMnRrTUZkSVZrVmpWRW95V1cwNWFGVXlZemxRVVQwOQ==/aHR0cHM6Ly93d3cua29tcGFzLmNvbT9sZ25fbWV0aG9kPWtvbXBhc2lkJmw9Yw==?revoke=active
    open    https://www.kompas.com/?lgn_method=kompasid&l=c
    [Teardown]  Close Browser

*** Keywords ***
open
    [Arguments]    ${element}
    Go To          ${element}

clickAndWait
    [Arguments]    ${element}
    Click Element  ${element}

click
    [Arguments]    ${element}
    Click Element  ${element}

sendKeys
    [Arguments]    ${element}    ${value}
    Press Keys     ${element}    ${value}

submit
    [Arguments]    ${element}
    Submit Form    ${element}

type
    [Arguments]    ${element}    ${value}
    Input Text     ${element}    ${value}

selectAndWait
    [Arguments]        ${element}  ${value}
    Select From List By Value   ${element}  ${value}

select
    [Arguments]        ${element}  ${value}
    Select From List By Value   ${element}  ${value}

verifyValue
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

verifyText
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

verifyElementPresent
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

verifyVisible
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

verifyTitle
    [Arguments]                  ${title}
    Title Should Be              ${title}

verifyTable
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

assertConfirmation
    [Arguments]                  ${value}
    Alert Should Be Present      ${value}

assertText
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

assertValue
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

assertElementPresent
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

assertVisible
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

assertTitle
    [Arguments]                  ${title}
    Title Should Be              ${title}

assertTable
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

waitForText
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

waitForValue
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

waitForElementPresent
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

waitForVisible
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

waitForTitle
    [Arguments]                  ${title}
    Title Should Be              ${title}

waitForTable
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

doubleClick
    [Arguments]           ${element}
    Double Click Element  ${element}

doubleClickAndWait
    [Arguments]           ${element}
    Double Click Element  ${element}

goBack
    Go Back

goBackAndWait
    Go Back

runScript
    [Arguments]         ${code}
    Execute Javascript  ${code}

runScriptAndWait
    [Arguments]         ${code}
    Execute Javascript  ${code}

setSpeed
    [Arguments]           ${value}
    Set Selenium Timeout  ${value}

setSpeedAndWait
    [Arguments]           ${value}
    Set Selenium Timeout  ${value}

verifyAlert
    [Arguments]              ${value}
    Alert Should Be Present  ${value}
