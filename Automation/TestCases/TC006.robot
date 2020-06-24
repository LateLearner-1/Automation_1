*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/User_Keywords_data_driven.robot

*** Variables ***

*** Test Cases ***
Recorded Script
    ${maxr}=  Read Number of Rows  Sheet1

    FOR    ${i}    IN RANGE  2  ${maxr}+1
    ${username}=  Read cell data  Sheet1  ${i}  1
    ${email}=  Read cell data  Sheet1  ${i}  2
    ${password}=  Read cell data  Sheet1  ${i}  3
    Open Browser and Maximise
    Input Text    //input[@name="fld_username"]    ${username}
    Input Text    //input[@name="fld_email"]    ${email}
    Input Text    //input[@name="fld_password"]    ${password}
    Sleep  2  seconds
    Close Browser Final
    END