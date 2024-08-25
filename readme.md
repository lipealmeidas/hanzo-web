# Web Automation for E-commerce Platform

This repository contains test automation for an e-commerce web platform using the Robot Framework and Selenium. The project aims to validate critical functionalities such as user registration and product purchasing, ensuring that the platform performs as expected under various scenarios.

## 📜 Project Description

The primary objective of this project is to automate the testing of key features within an e-commerce platform. This includes automating the user registration process and the entire purchasing flow. The automation is designed to ensure that these processes are executed accurately, enhancing the platform's reliability and user experience.

## 🗂️ Project Structure

The project is organized as follows:

- **config/**: Configuration file (`package.resource`) for mapping libraries and resources used in the tests.
- **pages/**: Mapping of page elements. This includes all the necessary locators for the web elements that will be interacted with during the tests.
- **resources/**: Contains reusable keywords that encapsulate common actions, such as filling out forms, clicking buttons, and verifying outputs.
- **tests/**: Test cases designed to validate the registration and purchasing functionalities.
- **results/**: Directory where the test execution results are stored. These include detailed reports that can be analyzed post-execution.

## 🛠️ Prerequisites

Before running the project, ensure that the following tools are installed:

- [Python](https://www.python.org/downloads/): Programming language required to execute the tests.
- [Selenium](https://www.selenium.dev/): WebDriver used for browser automation.
- [Robot Framework](https://robotframework.org/): Framework used to write and execute the tests.

You can install all the required dependencies using the `requirements.txt` file:

```bash
pip install -r requirements.txt
```

## 🔧 Setup

To get started with the project, follow these steps:

1. Clone the repository:
    ```bash
    git clone https://github.com/lipealmeidas/hanzo-web.git
    ```
2. Navigate to the project directory:
    ```bash
    cd web-automation-ecommerce
    ```
3. Configure the Selenium WebDriver for your preferred browser.

## 🚀 Running the Tests

1. To execute the tests, use the following command:
    ```bash
    robot -d results tests/practice.automationtesting.robot
    ```
   This will run the test cases and save the results in the `results/` directory.

## 📝 Test Cases

### Registration Test
The registration test ensures that a new user can successfully register on the platform.

```robot
Scenario: Validate Registration
    Given I Am On The Registration Screen
    When I Do The Registration
    Then Registration And Login Is Successful
```

### Purchase Test
This test validates the purchasing process, ensuring that a user can successfully add a product to the cart and complete the purchase.

```robot
Scenario: Validate Purchase
    Given I Am On The Shop Screen
    And I Add Product To Basket
    When I Complete The Purchase On The Checkout Screen
    Then The System Displays The Order Details
```

## 📝 Test File Structure

The project is designed to be modular and scalable, with the following file structure:

### Pages
The `pages/` directory contains the locators for the web elements that the tests will interact with.

### Resources
The `resources/` directory contains reusable keywords that define the actions performed during the tests.

### Tests
The `tests/` directory contains the test cases that validate the functionalities.

### Results
The `results/` directory stores the execution reports for easy review and analysis.

## 📊 Technologies Used

- **Robot Framework**: Test automation framework for writing and executing test cases.
- **Selenium**: Browser automation tool used for simulating user interactions with the web application.
- **Python**: The programming language used to build and execute the test scripts.

## 🧑‍💻 Author

This project was developed as part of a technical assessment for an automation specialist position. For any queries or further information, please reach out via email:

- **Email**: [souza.felipedealmeida@gmail.com](mailto:souza.felipedealmeida@gmail.com)
