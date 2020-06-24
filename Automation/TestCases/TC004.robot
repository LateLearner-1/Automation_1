*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    Chrome
${url1}    https://www.thetestingworld.com/testings



*** Test Cases ***
New cases from Keyboard inputs
    open browser    ${url1}    Chrome
    maximize browser window
    title should be     Login & Sign Up Forms
    element should be enabled    //input[@name="fld_username"]
    element should be visible    //input[@name="fld_username"]
    close browser

