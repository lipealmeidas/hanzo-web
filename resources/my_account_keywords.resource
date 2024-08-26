*** Settings ***
Documentation       Test Keywords File

Resource            ../config/package.resource

*** Keywords ***
I Do The Registration

    ${EMAIL}                ${PASS}                 I Generate Register Data

    VAR  ${EMAIL}  ${EMAIL}  scope=SUITE
    VAR  ${PASS}  ${PASS}  scope=SUITE

    Perform Input Text      ${REG_EMAIL_ADDRESS}    ${EMAIL}
    Perform Input Text      ${REG_PASSWORD}         ${PASS}
    Perform Click Element   ${BTN_REGISTER}

Registration And Login Is Successful
    
    Capture Page Screenshot
    Wait Until Element Is Visible  ${BTN_SING_OUT}