*** Settings ***
Library    SeleniumLibrary
Library  ../Python_code/UserKeyword.py

*** Keywords ***
Start Browser and Maximize
    open browser    https://www.thetestingworld.com/testings    Chrome
    maximize browser window

close browser window
    ${title}=    get title
    log    ${title}
    close browser


Concatinate Username and Password
    [Arguments]  ${element1}  ${element2}
    ${result-val}=  con_two  ${element1}  ${element2}
    log  ${result-val}
