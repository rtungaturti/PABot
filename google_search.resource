*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.google.com
${BROWSER}    chrome

*** Keywords ***
Google Search
    Open Browser    ${URL}    ${BROWSER}
    Input Text    name:q    ${SEARCH_TERM}
    Press Keys    name:q    \\13
    Wait Until Page Contains    ${SEARCH_TERM}
    Close Browser
