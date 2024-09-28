# selenium-rf-automation
# Overview
This project is a POC which showcases the use of Python 3+, Selenium, and Robot Framework in a test automation context.
The primary methodology which will be used for this project is the Page Object Model (POM), a design pattern that enhances test script maintainability and re-usability.

For this project, we'll be using Domino's pizza web application as our demo
https://www.dominos.com/

# Getting Started
1. Clone the repository to your local machine
2. Install the required Python packages

```pip install -r requirements.txt```

3. Download ChromeDriver and place it in your virtual environment's PATH

# Executing Tests
To run the demo scripts using Robot Framework, use the following commands

```robot.exe .\{PATH_TO_TESTS} -t "{TEST_NAME}"```

# What the Demo Does
The purpose of the project is to demonstrate a variety of different test cases using the Domino's web application.
In this demo, we'll perform the following.

1. Navigates through a couple web pages
2. Verifies page title and fields
3. Clicks on different links
4. Fills out and submits forms
5. Verifies a couple of negative test cases
6. Demonstrates a combination of REST API and UI within a script

Also want to note that by adopting the POM design pattern, we made our automation more robust, scalable, and maintainable.
It simplifies and enhances the readability of our test scripts.

# Standards and Best Practices
The following respect title case convention
- Page objects and test robot files
- Script names
- Variables
- Keywords
- Locators

The following respect camel case convention
- Keyword arguments

### Locators
Standard page object locators should respect the following naming convention
- Start with the page object name
- Follows up with description of what the locator is for
  - Ex: First name input field = FirstName
- Ends with the type of element
- Ex: **${SignUp_FirstName_Input}**