*** Settings ***
Library    SeleniumLibrary
Library    Collections
Default Tags  Trial
Force Tags  Trail1

*** Variables ***


*** Test Cases ***
TC002 Create List print lenght of list and any one item
    ${speed}=   get selenium speed
    ${key_1}=   set variable    log to console
    run keyword    ${key_1}     swapnil




*** Keywords ***
