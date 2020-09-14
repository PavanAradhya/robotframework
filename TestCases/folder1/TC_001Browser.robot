*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/Resources1.robot
Documentation  This is suite level explanation
Test Setup  Start Browser and maximize  ${U}  ${B}
Test Teardown  Close Browser and collect Title
Suite Setup  Before Each Test Suite
Suite Teardown  After each Test Suite

*** Variables ***
${U}  http://thetestingworld.com/testings
${B}  Chrome

*** Test Cases ***
First Testcase
    [Tags]  Smoke
    [Documentation]  This is test case level explanation
    Input Text  name:fld_username  Pavan
    Input Text  xpath://input[@name='fld_email']  Pavan@gmail.com


Second Testcase
    [Documentation]  This is second test case level explanation
#    [Timeout]  1s
    Set Selenium Speed  1seconds
    Input Text  xpath://input[@name='fld_password']  PAVAN@123
    Input Text  xpath://input[@name='fld_cpassword']  PAVAN@123
    Clear Element Text  name:fld_username

Third TestCase
    [Tags]  Smoke  Sanity
    [Documentation]  This is third test case level explanation
    Set Selenium Speed  2seconds
    Input Text  xpath://input[@name='dob']  09/04/1992
    Input Text  xpath://input[@name='phone']  8971331935
    Input Text  xpath://input[@name='address']  Githanjali nilaya
    Select Radio Button  add_type  office
    Select Checkbox  name:terms
    Select From List by Index  name:sex  2





