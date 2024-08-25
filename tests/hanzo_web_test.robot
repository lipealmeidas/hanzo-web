*** Settings ***
Documentation       Test File

Resource            ../config/package.resource

Test Setup          Set Selenium Speed  0.1s
Test Teardown       Close Browser

*** Test Cases ***
Scenario: Validate Registration
    Given I Am On The Registration Screen
    When I Do The Registration
    Then Registration And Login Is Successful

Scenario: Validate Purchase
    Given I Am On The Shop Screen
    And I Add Product On Basket
    When I Complete The Purchase On The Checkout Screen
    Then The System Displays The Order Details
