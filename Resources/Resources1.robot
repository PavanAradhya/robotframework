*** Settings ***
Library  SeleniumLibrary
Library  ../ExternalKeyword/Keywords.py
Library  ../ExternalKeyword/JSONDATA.py


*** Variables ***


*** Keywords ***
Start Browser and maximize
    [Documentation]  This is keyword level explanation
    [Arguments]  ${URL}  ${Browser}
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window

Close Browser and collect Title
    ${Res}  Get Title
    Log  ${Res}
    Close Browser

Before Each Test Suite
    Log  Before each test cases

After each Test Suite
    Log  After each test cases

Creating folder at runtime
    [Arguments]  ${f}  ${s}
    create_folder  ${f}
    create_sub_folder  ${s}

ConcateResult
    [Arguments]  ${Username}  ${Passward}
    ${R}=  concating_username_passward  ${Username}  ${Passward}
    Log  ${R}

ElementLocaters
    [Arguments]  ${L}
    ${result}=  readlocator  ${L}
    [Return]    ${result}



