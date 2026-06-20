*** Settings ***
Resource    ../resources/api_keywords.robot

Suite Setup     Create Session

*** Test Cases ***
Verify Users Endpoint
    ${response}=    Get Users

    Should Be Equal As Integers
    ${response.status_code}
    200