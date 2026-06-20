*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://netent.com/
${BROWSER}    chrome

*** Keywords ***

Open Casino Site
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.5s

Click Games Menu
    Click Element    xpath=//button[contains(text(),'Games')]

Open First Game
    Click Element    xpath=(//div[contains(@class,'game')])[1]
    Wait Until Page Contains Element    //canvas

Scroll Down Page
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)

Open Fullscreen Mode
    Click Element    xpath=//button[contains(@class,'fullscreen')]

Take Screenshot
    Capture Page Screenshot