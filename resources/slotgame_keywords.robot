*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${GAME}   https://playin.com/demo/divinegoldr96f10?showNavbar=true
${BROWSER}    chrome


*** Keywords ***

Open Game Site
    Open Browser    ${GAME}    ${BROWSER}
    Maximize Browser Window
    Sleep   5s
    # Set Selenium Speed    3s
    Click Element    xpath=/html/body/div[3]/div/div[2]/div[2]/div/button[2]
    Sleep   10s
    Capture Page Screenshot
    Click Element    xpath=/html/body/div[4]/div/div/div[2]
    Sleep   5s
    Capture Page Screenshot
   

