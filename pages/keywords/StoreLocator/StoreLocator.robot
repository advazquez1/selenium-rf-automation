*** Settings ***
Documentation    Store Locator page functionality

*** Variables ***
${StoreLocator_Header}=        //*[text()='Store Locator']
${StoreLocator_Delivery}=      //*[@data-quid='Delivery-input']
${StoreLocator_Carryout}=      //*[@data-quid='Carryout-input']

*** Keywords ***
