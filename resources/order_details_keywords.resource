*** Settings ***
Documentation       Test Keywords File

Resource            ../config/package.resource

*** Keywords ***

The System Displays The Order Details
    [Documentation]    Short description.

    Wait Until Element Is Visible    ${ORDER_DETAILS_PAGE}
    Sleep    2     
