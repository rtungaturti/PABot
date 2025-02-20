*** Settings ***
Resource     google_search.resource

*** Variables ***
${SEARCH_TERM}    pytest

*** Test Cases ***
Google Search Part 1
    Log To Console    Starting Google Search Part 1
    Google Search
    Log To Console    Completed Google Search Part 1
