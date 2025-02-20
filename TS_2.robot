*** Settings ***
Resource     google_search.resource

*** Variables ***
${SEARCH_TERM}    selenium example

*** Test Cases ***
Google Search Part 2
    Log To Console    Starting Google Search Part 2
    Google Search
    Log To Console    Completed Google Search Part 2
