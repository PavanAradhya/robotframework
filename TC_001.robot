*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resources1.robot

*** Variables ***
${U}  http://www.thetestingworld.com/testings
${B}  Chrome

*** Test Cases ***
TC_001 Browser Start and Close
    ${Res}=  Start Browser and maximize  ${U}  ${B}
    Log  ${Res}
    Enter Username Passward Email  ${Res}  pavan@gmail.com
    Input Text  xpath://input[@name='fld_password']  PAVAN@123
    Input Text  xpath://input[@name='fld_cpassword']  PAVAN@123
    Input Text  xpath://input[@name='dob']  09/04/1992
    Input Text  xpath://input[@name='phone']  8971331935
    Input Text  xpath://input[@name='address']  Githanjali nilaya
    Select Radio Button  add_type  office
    Select Checkbox  name:terms
#    Click Link  xpath://a[text()='Read Detail']
#    Click Button  xpath://a[@class='close']
    Set Selenium Speed  2seconds
    Select From List by Index  name:sex  2
    Select From List by Value  name:sex  1
    Select From List by Label  name:sex  Female
    Click Button  xpath://input[@type='submit']

*** Keywords ***
Enter Username Passward Email
    [Arguments]  ${Username}  ${email}
    Input Text  name:fld_username  ${Username}
    Input Text  xpath://input[@name='fld_email']  ${email}

--------------------------------------------------------------------------------------
Resoures folder

*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Start Browser and maximize
    [Arguments]  ${URL}  ${Browser}
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    ${Title}=  Get Title
    [Return]  ${Title}
