*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${GAME}   https://playin.com/demo/divinegoldr96f10?showNavbar=true
${BROWSER}    chrome


*** Keywords ***

Open Game Site
    Open Browser    ${GAME}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    3s
   

