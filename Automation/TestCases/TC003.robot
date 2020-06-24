*** Settings ***
Library    SeleniumLibrary
Resource  ../Resources/Resourse.robot

*** Variables ***


*** Test Cases ***
TC001
    Given Start Browser and Maximize
    When Concatinate Username and Password  swap  12345
    Then close browser window