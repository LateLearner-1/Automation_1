*** Settings ***
Library    SeleniumLibrary
Resource    C:/Users/HP/PycharmProjects/Automation/Resources/Resourse.robot
Documentation    This is Practice
Test Setup  Start Browser and Maximize
Test Teardown  close browser window
#Suite Setup  Before each test suite
#Suite Teardown  After each test suite

Force Tags  Trial1

#test teardown    close browser window
*** Variables ***


*** Test Cases ***
TC001
    [Tags]  Smoke
    enter username password and email  swapnil  swapnil@bbc.com  1234  1234


TC002 click on radio button
    [Tags]  Smoke  Sanity
    click element    //input[@type="radio" and @value='home']
    


*** Keywords ***
enter username password and email
    [Arguments]    ${username}    ${email}    ${password}    ${cpassword}
    input text    //input[@name='fld_username']    ${username}
    input text    //input[@name='fld_email']    ${email}
    input text    //input[@name='fld_password']    ${password}
    input text    //input[@name='fld_cpassword']    ${cpassword}