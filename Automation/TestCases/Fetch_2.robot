*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resourse.Robot
Library  ../Python_code/Locators.py
Test Setup  Start Browser and Maximize
Test Teardown  close browser window


*** Variables ***


*** Test Cases ***
Advanced Robot
    ${username}=  Read Element Locator  Registration.username_textbox_name
    ${email}=  Read Element Locator  Registration.email_textbox_name
    ${pssword}=  Read Element Locator  Registration.password_textbox_name
    ${cpssword}=  Read Element Locator  Registration.cpassword_textbox_name
    input text    ${username}    Swapnil1534
    input text    ${email}    swapnil.k1534@gmail.com
    input text    ${pssword}    1234
    input text    ${cpssword}    1234


*** Keywords ***
Read Element Locator
    [Arguments]  ${Jsonpath}
    ${result}=  read_locator_from_json  ${Jsonpath}
    [Return]  ${result}

