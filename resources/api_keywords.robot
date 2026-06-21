*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}    https://reqres.in

*** Keywords ***

Create API Session
    Create Session    reqres    ${BASE_URL}

Get Users
    ${response}=    GET On Session    reqres    /api/users?page=2
    RETURN    ${response}