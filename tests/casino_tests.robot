*** Settings ***
Library    SeleniumLibrary
Resource   ../keywords/casino_keywords.robot
*** Variables ***

*** Test Cases ***
Open Casino Website
    Open Casino Site
    Click Games Menu
    Open First Game
    Take Screenshot
    # Click Spin Button
    # Scroll Down Page
    # Open Fullscreen Mode
    # Take Screenshot
    # Close Browser
