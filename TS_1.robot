*** Settings ***
Resource    google_search.resource

*** Variables ***
${SEARCH_TERM}    pytest

*** Test Cases ***
Google Search Part 1
    Google Search
