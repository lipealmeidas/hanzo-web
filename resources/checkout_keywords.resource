*** Settings ***
Documentation       Test Keywords File

Resource            ../config/package.resource


*** Keywords ***
I Complete The Purchase On The Checkout Screen
    [Documentation]    Short description.

    Perform Click Element   ${VIEW_BASKET}
    Perform Click Element   ${PROCEEED_TO_CHECKOUT}
    Remove Ads From The Page
    Fill Out Purchase Form
    Capture Page Screenshot
    Perform Click Element   ${BTN_PLACE_ORDER}

Fill Out Purchase Form
    [Documentation]    Short description.

    ${FIST_NAME}
    ...                     ${LAST_NAME}
    ...                     ${COMPANY_NAME}
    ...                     ${EMAIL}
    ...                     ${PHONE}
    ...                     ${ADDRESS}
    ...                     ${STATE}
    ...                     ${CITY}
    ...                     ${POSTCODE}             I Generate Billing Data

    Perform Input Text      ${REG_FIRST_NAME}       ${FIST_NAME}
    Perform Input Text      ${REG_LAST_NAME}        ${LAST_NAME}
    Perform Input Text      ${REG_COMPANY_NAME}     ${COMPANY_NAME}
    Perform Input Text      ${REG_EMAIL}            ${EMAIL}
    Perform Input Text      ${REG_PHONE_NUMBER}     ${PHONE}
    Perform Click Element   ${SELECT_COUNTRY}
    Perform Input Text      ${SEARCH_COUNTRY}       ${COUNTRY}
    Press Keys              none                    ENTER
    Perform Input Text      ${REG_ADDRESS}          ${ADDRESS}
    Perform Input Text      ${REG_CITY}             ${CITY}
    Perform Click Element   ${SELECT_STATE}
    Perform Input Text      ${SEARCH_STATE}         ${STATE}
    Press Keys              none                    ENTER
    Perform Input Text      ${REG_POSTCODE}         ${POSTCODE}
    Element Should Be Enabled  ${BTN_PLACE_ORDER}
