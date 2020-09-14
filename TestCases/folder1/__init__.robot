*** Settings ***
Suite Setup  Before Each Test suite
Suite Teardown  After Each Test suite
*** Variables ***
*** Keywords ***
Before Each Test suite
    Log  Test Suite Started

After Each Test suite
    Log  Test Suite ended