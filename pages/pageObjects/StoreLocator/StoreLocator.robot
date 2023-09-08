*** Settings ***
Documentation    Store Locator page functionality
Resource    ../Root.txt

*** Variables ***
${StoreLocator_Header}=        //*[text()='Store Locator']
${StoreLocator_Delivery}=      //*[@data-quid='Delivery-input']
${StoreLocator_Carryout}=      //*[@data-quid='Carryout-input']

*** Keywords ***