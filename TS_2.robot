*** Settings ***
Resource    google_search.resource


*** Variables ***
${SEARCH_TERM}    selenium example

*** Test Cases ***
Google Search Part 2
    Google Search
