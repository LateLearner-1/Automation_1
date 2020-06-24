*** Settings ***
Library  SeleniumLibrary
Library  ../Python_code/Read_Excel.py

*** Variables ***
${URL}  https://www.thetestingworld.com/testings
${Browser}  Chrome

*** Keywords ***
Open Browser and Maximise
    Open Browser  ${URL}  ${Browser}
    maximize browser window

Read Number of Rows
    [Arguments]  ${sheet_name}
    ${maxr}=  fetch_number_of_rows  ${sheet_name}
    [Return]  ${maxr}

Read cell data
    [Arguments]  ${sheet_name}  ${rows}  ${cell}
    ${data}=  fetch_cell_data  ${sheet_name}  ${rows}  ${cell}
    [Return]  ${data}

Close Browser Final
    close browser