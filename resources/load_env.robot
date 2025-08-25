*** Settings ***
Library    ../libraries/load_env.py
Library    RequestsLibrary

*** Keywords ***
Load Env
    ${url}=    Get Env    BASE_URL
    ${token}=  Get Env    BEARER_TOKEN

    Set Suite Variable    ${url}    ${url}
    Set Suite Variable    ${token}    ${token}

    
