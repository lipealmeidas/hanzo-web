*** Settings ***
Documentation       Test Keywords File

Resource            ../config/package.resource

*** Keywords ***
I Open Browser
    [Documentation]    Keyword to Open the Browser.
    ...
    ...  Args:
    ...    ${URL}: <description>
    [Arguments]     ${URL}

    Open Browser    about:blank     Chrome
    Maximize Browser Window
    Go To           ${URL}

Perform Click Element
    [Documentation]    Performs the Click on the Element.
    ...
    ...  Args:
    ...    \n${element}
    ...    \n${screenshot}: Default= True
    [Arguments]     ${element}  ${screenshot}=True

    ${visible}      Wait Until Element Is Visible And Return Status  element=${element}
    IF  ${visible}
        Remove Ads From The Page
        Click Element   ${element}
    ELSE
        Fail    msg=*** Could not click on the element "${element}" ***
    END

    IF  ${screenshot}
        Capture Page Screenshot
    END

Perform Input Text
    [Documentation]    Input Text In The Field
    ...
    ...  Args:
    ...    \n${field}
    ...    \n${text}
    [Arguments]     ${field}    ${text}

    ${visible}      Wait Until Element Is Visible And Return Status  ${field}

    IF  ${visible}
        Click Element   ${field}
        Input Text      ${field}    ${text}
    ELSE
        Fail    msg= *** Could not enter text in the field "${field}" ***
    END

I Generate Register Data
    [Documentation]    Data generator for registration

    ${EMAIL}    FakerLibrary.Email
    ${PASS}     FakerLibrary.Password

    RETURN  ${EMAIL}
    ...     ${PASS}

I Generate Billing Data
    [Documentation]    Data generator for purchase

    ${FIST_NAME}        FakerLibrary.First Name
    ${LAST_NAME}        FakerLibrary.Last Name
    ${COMPANY_NAME}     FakerLibrary.Company
    ${EMAIL}            FakerLibrary.Email
    ${PHONE}            FakerLibrary.Phone Number
    ${ADDRESS}          FakerLibrary.Street Address
    ${STATE}            FakerLibrary.State
    ${CITY}             FakerLibrary.City
    ${POSTCODE}         FakerLibrary.Postcode

    RETURN  ${FIST_NAME}
    ...     ${LAST_NAME}
    ...     ${COMPANY_NAME}
    ...     ${EMAIL}
    ...     ${PHONE}
    ...     ${ADDRESS}
    ...     ${STATE}
    ...     ${CITY}
    ...     ${POSTCODE}

Wait Until Element Is Visible And Return Status
    [Documentation]    Check if element is visible and return status "True/False".
    ...    "timeout" defaults to 5 seconds if not specified
    ...    To capture an image, set the "screenshot" parameter to "True"
    [Arguments]     ${element}  ${timeout}=5    ${screenshot}=False

    ${visible}  Run Keyword And Return Status
    ...         Wait Until Element Is Visible  ${element}  ${timeout}
    IF    ${screenshot} == True    Capture Page Screenshot

    RETURN                  ${visible}

Remove Ads From The Page
    [Documentation]    Keywords in JavaScript to remove ads on the page
    Execute Javascript
    ...                 var adElement = document.getElementById("google-anno-sa"); if (adElement) { adElement.remove(); }
    ...                 var intervalId = setInterval(function() { var adElement = document.getElementById("google-anno-sa"); if (adElement) { adElement.remove(); } }, 1000);
    ...                 setTimeout(function() { clearInterval(intervalId); }, 10000);
    ...                 ['ad', 'ads', 'adsbygoogle', 'ad-container', 'ad-zone', 'ad-space', 'banner-ad', 'google_ads_frame'].forEach(function(id) { var adElement = document.getElementById(id); if (adElement) { adElement.remove(); } });
    ...                 ['adsbygoogle', 'ad', 'ad-box', 'advertisement', 'google-ad', 'ad-slot', 'ad-wrapper'].forEach(function(className) { var adElements = document.getElementsByClassName(className); while(adElements.length > 0) { adElements[0].remove(); } });
    ...                 var iframes = document.querySelectorAll('iframe'); iframes.forEach(function(iframe) { if (iframe.src.includes('ad')) { iframe.remove(); } });
    ...                 var adElements = document.querySelectorAll('div[style*="z-index: 2147483647"], ins[style*="display: block"]'); adElements.forEach(function(ad) { ad.remove(); });
