*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resourse.Robot
Test Setup  Start Browser and Maximize



*** Variables ***


*** Test Cases ***
Robot fetch data

    enter username password and email  swapnil  swapnil@bbc.com  1234  1234
    ${page_title}=    Get Title
    


*** Keywords ***
enter username password and email
    [Arguments]    ${username}    ${email}    ${password}    ${cpassword}
    input text    //input[@name='fld_username']    ${username}
    input text    //input[@name='fld_email']    ${email}
    input text    //input[@name='fld_password']    ${password}
    input text    //input[@name='fld_cpassword']    ${cpassword}