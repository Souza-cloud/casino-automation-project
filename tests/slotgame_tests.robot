*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/slotgame_keywords.robot
*** Variables ***

*** Test Cases ***
Play Slot Game
     [Tags]      slotgame
        Open Game Site
    # Open Casino Site
    # Click Games Menu
    # Open First Game
    # Take Screenshot
    # # Click Spin Button
    # Scroll Down Page
    # Open Fullscreen Mode
    # Take Screenshot
    # Close Browser
