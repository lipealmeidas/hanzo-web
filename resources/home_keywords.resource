*** Settings ***
Documentation       Test Keywords File

Resource            ../config/package.resource

*** Variables ***
${MENU_MY_ACCOUNT_PAGE}     ${EMPTY}
${TITLE_MY_ACCOUNT_PAGE}    ${EMPTY}


*** Keywords ***
I Am On The Registration Screen
    [Documentation]    Short description.

    I Open Browser          URL=${URL_PRACTICE}
    Perform Click Element   ${MENU_MY_ACCOUNT_PAGE}
    Title Should Be         ${TITLE_MY_ACCOUNT_PAGE}

