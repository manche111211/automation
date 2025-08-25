*** Settings ***
Resource    ../resources/load_env.robot
Library    RequestsLibrary
Suite Setup    Load Env

*** Test Cases ***
Get Users Balance
    &{headers}=    Create Dictionary    Authorization=Bearer ${token}   x-custom-device-id=A4C26CDC-F380-4C24-A006-509B68277089     x-custom-lang=en

    Create Session    mysession    ${url}    headers=${headers}

    ${response}=      GET On Session    mysession    /api/v1/wallet/balance
    Status Should Be  200    ${response}