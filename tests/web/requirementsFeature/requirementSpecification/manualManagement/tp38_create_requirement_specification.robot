*** Settings ***
Documentation  A test case for changing the project availibility
Resource  ../../../../../resource/testlink.robot
Test Setup  Login as admin correct
Test Teardown  Run keywords  testlink.Delete Requirement Specification
...            AND           Close browser
*** Variables ***

${dokumentID}   newdokumentid38
${title}        newtitle38



*** Test Cases ***

Create requirement specification

        testlink.Change and check test project with RS control
        testlink.Go to Requirement Specification (mainframe)
        testlink.Create New Requirement Specification (type URS)
        testlink.Choose Requirement Specification
        testlink.Create Requirement Operations
