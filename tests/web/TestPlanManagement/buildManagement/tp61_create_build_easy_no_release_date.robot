*** Settings ***

Documentation  A test suite with a single test for creating a new Custom Field. This test has
...            a workflow that is created using keywords from the resource file.

Resource       ../../../../resource/testlink.robot

Test Setup  Run keywords    testlink.Create new Test Project
...             AND         headerPage.Go to index page
...             AND         testlink.Choose test project from dropdown
...             AND         testlink.Create New Test Plan Management


Test Teardown  Run keywords    testlink.Delete Build
...            AND    testlink.Delete Test Plan Management  ${TestPlanManagementName}
...             AND          testlink.Delete test project  ${newTestProjectName}  ${newTestProjectPrefix}
...             AND          testlink.Check that test has been deleted
...            AND           Close browser


*** Variables ***
${BuildName}  BuildName
${Description}  Description
${TestPlanManagementName}  TestplanNumberOne
${newTestProjectName}  testProjectName
${newTestProjectPrefix}  128
${TestPlanManagementDescription}  DescriptionDescription
*** Test Cases ***

Create Build - "Easy" - No release date


    headerPage.Go to index page
    testlink.Start creating build
    testlink.Add Details and Finish creating build
    testlink.Check that Build is created
