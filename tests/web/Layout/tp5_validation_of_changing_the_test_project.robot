*** Settings ***
Documentation  A test suite with a single test for creating a new Custom Field. This test has
...            a workflow that is created using keywords from the resource file.
Resource       ../../../resources/resourcesLayout.robot
#blabla
Test Teardown  close browser
*** Test Cases ***
Validation of changing the Test Project
    Open Browser To Login Page
    Login as Admin
    Submit Credentials
    Check Current Project
    Change Test Project
    Check New Project
