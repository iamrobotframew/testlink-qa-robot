*** Settings ***
Documentation  A test suite with a single test for creating a new Custom Field. This test has
...            a workflow that is created using keywords from the resource file.
Resource       ../../../resources/resourcesLayout.robot

*** Test Cases ***
Login as admin
    Open Browser To Login Page
    Login as Admin
    Submit Credentials
    Select desired frame
    Check my settings
