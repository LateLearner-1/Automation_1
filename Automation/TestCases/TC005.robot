*** Settings ***
Resource  ../Resources/Resourse.Robot

*** Variables ***

*** Test Cases ***
Test case in BDD format
    Given Start Browser and Maximize

    When Concatinate Username and Password  asdasd  asdasd

    Then close browser window
