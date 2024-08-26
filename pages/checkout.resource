*** Settings ***
Documentation       Mapping of Automation Page Elements

*** Variables ***
${SELECT_COUNTRY}               //span[@class='select2-chosen'][@id='select2-chosen-1']
${SEARCH_COUNTRY}               //INPUT[@id='s2id_autogen1_search']
${COUNTRY}                      Brazil

${SELECT_STATE}                 //span[@class='select2-chosen'][@id='select2-chosen-2']
${SEARCH_STATE}                 //INPUT[@id='s2id_autogen2_search']
${REG_FIRST_NAME}               //input[@id='billing_first_name']
${REG_LAST_NAME}                //input[@id='billing_last_name']
${REG_COMPANY_NAME}             //input[@id='billing_company']
${REG_EMAIL}                    //input[@id='billing_email']
${REG_PHONE_NUMBER}             //input[@id='billing_phone']
${REG_COUNTRY_SELECT}           //select[@name='billing_country']
${REG_ADDRESS}                  //input[@id='billing_address_1']
${REG_CITY}                     //input[@id='billing_city']
${REG_STATE_SELECT}             //select[@name='billing_state']
${REG_POSTCODE}                 //input[@id='billing_postcode']
${REG_SEARCH_COUNTRY_FIELD}     //input[@id='s2id_autogen1_search']

${BTN_SUBSCRIBE}                //input[@value='Subscribe']
${BTN_PLACE_ORDER}              //input[@id='place_order']
${ORDER_DETAIL_PAGE}            //*[contains(text(), 'Thank you. Your order has been received.')]
