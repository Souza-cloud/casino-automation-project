*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://netent.com/
${URL2}   https://playin.com/games/divine-fortune-gold
${BROWSER}    chrome


*** Keywords ***

Open Casino Site
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.5s

Click Games Menu
    Click Element   xpath=/html/body/div/div/div/div[2]/div[2]/div/div/a/img
    # Wait Until Number Of Windows Is    2    timeout=10s
    Switch Window    NEW
    Wait Until Location Contains    ${URL2}
    ${current_url}=    Get Location
Log    Current URL: ${current_url}
    Capture Page Screenshot

Open First Game
    Click Element    xpath=/html/body/div/div/div/div[2]/div/main/div[2]/div/div/div[2]/div[1]/div[1]/div[2]/button[1]  
    Capture Page Screenshot
    Click Element    xpath=/html/body/div[3]/div/div[2]/div[2]/div/button[2]
    Set Selenium Speed    0.5s
    Capture Page Screenshot
    Sleep   5s
    Click Element    xpath=/html/body/div[4]/div/div/div[2]

Scroll Down Page
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)

Open Fullscreen Mode
    Click Element    xpath=//button[contains(@class,'fullscreen')]

Take Screenshot
    Capture Page Screenshot