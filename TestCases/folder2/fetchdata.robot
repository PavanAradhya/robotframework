*** Settings ***
Library  SeleniumLibrary
Test Setup  Sart the browser
Test Teardown  Close the Browser
Resource  ../../Resources/Resources1.robot

*** Variables ***
${URL}  http://thetestingworld.com/testings
${Browser}  Chrome
*** Test Cases ***
Fetching Title
    ConcateResult  Pavan  Pavan@123
#    Creating folder at runtime  more  unhappy
    ${T}=  Get Title
    Log  ${T}
    ${Sp}=  Get Selenium Speed
    Log  ${Sp}
    ${V}=  Get Value  Xpath://input[@type='submit']
    Log  ${V}
    ${Tex}=  Get Text  Xpath://a[@class='displayPopup']
    Log  ${Tex}
    Select From List by Index  name:sex  1
    ${Val}=  Get Selected List Value  name:sex
    Log  ${Val}
    ${Text}=  Get Selected List Label  name:sex
    Log  ${Text}
    ${Alllabels}=  Get List Items  name:sex
    Log  ${Alllabels}
    ${Actual URL}=  Get Location
    Log  ${Actual URL}
    ${Pagehtml}=  Get Source
    Log  ${Pagehtml}
    ${Attr}=  Get Element Attribute  name:fld_username  class
    Log  ${Attr}
    ${cnt}=  Get Element Count  type:password
    Log  ${cnt}
*** Keywords ***
Sart the browser
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window

Close the Browser
    Close Browser

