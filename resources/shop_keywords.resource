*** Settings ***
Documentation       Test Keywords File

Resource            ../config/package.resource

*** Keywords ***
I Am On The Shop Screen
    [Documentation]    Short description.

    I Open Browser          URL=${URL_PRACTICE}
    Perform Click Element   ${MENU_SHOP_PAGE}
    Wait Until Element Is Visible  ${BTN_FILTER}

I Add Product On Basket
    [Documentation]    Short description.
    Perform Click Element   ${MENU_ANDROID}
    Perform Click Element   ${BTN_BASKET_ANDROID}
    Wait Until Element Is Visible  ${VIEW_BASKET}
