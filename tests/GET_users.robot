*** Settings ***
Resource    ../resources/api_keywords.robot

Suite Setup    Create API Session

*** Test Cases ***
Verify Users Endpoint
    [Tags]    smoke    
    ${response}=    Get Users

    Should Be Equal As Integers
    ${response.status_code}
    200