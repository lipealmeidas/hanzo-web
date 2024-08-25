*** Settings ***
Documentation       File and Library Mapping File

Library             Collections
Library             OperatingSystem
Library             String
Library             SeleniumLibrary
Library             yaml
Library             FakerLibrary  locale=pt_BR

Resource            ../pages/home.resource
Resource            ../pages/my_account.resource
Resource            ../pages/shop.resource
Resource            ../pages/basket.resource
Resource            ../pages/checkout.resource
Resource            ../pages/order_details.resource

Resource            ../resources/common_keywords.resource
Resource            ../resources/home_keywords.resource
Resource            ../resources/my_account_keywords.resource
Resource            ../resources/shop_keywords.resource
Resource            ../resources/checkout_keywords.resource
Resource            ../resources/order_details_keywords.resource

***Variables***
${URL_PRACTICE}     https://practice.automationtesting.in
