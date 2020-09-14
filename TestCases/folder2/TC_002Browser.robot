*** Settings ***
Library  SeleniumLibrary
Documentation  This is suite level explanation
Test Setup  Start Browser and maximize  ${U}  ${B}
Test Teardown  Close Browser and collect Title
Resource  ../../Resources/Resources1.robot
default tags  DFT
force tags  ALL


*** Variables ***
${U}  http://thetestingworld.com/testings
${B}  Chrome

*** Test Cases ***
First Testcase
    [Documentation]  This is test case level explanation
    ${username}=  ElementLocaters  Registration.Username
    Input Text  name:${username}  Pavan
    ${EmailID}=  ElementLocaters  Registration.Email
    Input Text  ${EmailID}  Pavan@gmail.com


Second Testcase
    [Tags]  Regression
    [Documentation]  This is second test case level explanation
#    [Timeout]  1s
    Set Selenium Speed  1seconds
    ${Passward}=  ElementLocaters  Registration.Passward
    Input Text  ${Passward}  PAVAN@123
    ${Cpassward}=  ElementLocaters  Registration.Cpassward
    Input Text  ${Cpassward}  PAVAN@123
    Clear Element Text  name:fld_username

Third TestCase
    [Documentation]  This is third test case level explanation
    Set Selenium Speed  2seconds
    ${DOB}=  ElementLocaters  Registration.DOB
    Input Text  ${DOB}  09/04/1992
    ${Phone}=  ElementLocaters  Registration.Phone
    Input Text  ${Phone}  8971331935
    ${Address}=  ElementLocaters  Registration.Address
    Input Text  ${Address}  Githanjali nilaya
    Select Radio Button  add_type  office
    Select Checkbox  name:terms
    Select From List by Index  name:sex  2





